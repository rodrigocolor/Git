//--------------------------------------------------------------------------------------------------
//     This code was generated by the Wmi Delphi Code Creator http://theroadtodelphi.wordpress.com
//     Version: [VERSIONAPP] 
//
//
//
//     LIABILITY DISCLAIMER
//     THIS GENERATED CODE IS DISTRIBUTED "AS IS". NO WARRANTY OF ANY KIND IS EXPRESSED OR IMPLIED.
//     YOU USE IT AT YOUR OWN RISK. THE AUTHOR NOT WILL BE LIABLE FOR DATA LOSS,
//     DAMAGES AND LOSS OF PROFITS OR ANY OTHER KIND OF LOSS WHILE USING OR MISUSING THIS CODE.
//
//
//------------------------------------------------------------------------------------------------
#include "stdafx.h"
#define _WIN32_DCOM
#include <iostream>
using namespace std;
#include <comdef.h>
#include <Wbemidl.h>
# pragma comment(lib, "wbemuuid.lib")

//CREDENTIAL structure
//http://msdn.microsoft.com/en-us/library/windows/desktop/aa374788%28v=vs.85%29.aspx
#define CRED_MAX_USERNAME_LENGTH            513
#define CRED_MAX_CREDENTIAL_BLOB_SIZE       512
#define CREDUI_MAX_USERNAME_LENGTH CRED_MAX_USERNAME_LENGTH
#define CREDUI_MAX_PASSWORD_LENGTH (CRED_MAX_CREDENTIAL_BLOB_SIZE / 2)

[WMIMETHODDESC]
#pragma argsused
int main(int argc, char* argv[])
{
	wchar_t pszName[CREDUI_MAX_USERNAME_LENGTH+1] = L"user";
	wchar_t pszPwd[CREDUI_MAX_PASSWORD_LENGTH+1]  = L"password";
	BSTR strNetworkResource;
	//To use a WMI remote connection set localconn to false and configure the values of the pszName, pszPwd and the name of the remote machine in strNetworkResource
	bool localconn = true;	
	strNetworkResource = localconn ?  L"\\\\.\\[WMINAMESPACE]" : L"\\\\remote--machine\\[WMINAMESPACE]";

	COAUTHIDENTITY *userAcct =  NULL ;
	COAUTHIDENTITY authIdent;
	HRESULT hres;

	// Initialize COM. ------------------------------------------

	hres =  CoInitializeEx(0, COINIT_MULTITHREADED);
	if (FAILED(hres))
	{
		cout << "Failed to initialize COM library. Error code = 0x" << hex << hres << endl;
		cout << _com_error(hres).ErrorMessage() << endl;
		cout << "press enter to exit" << endl;
		cin.get();			
		return 1;                  // Program has failed.
	}

	// Set general COM security levels --------------------------
	if (localconn)
		hres =  CoInitializeSecurity(
			NULL,
			-1,                          // COM authentication
			NULL,                        // Authentication services
			NULL,                        // Reserved
			RPC_C_AUTHN_LEVEL_DEFAULT,   // Default authentication
			RPC_C_IMP_LEVEL_IMPERSONATE, // Default Impersonation
			NULL,                        // Authentication info
			EOAC_NONE,                   // Additional capabilities
			NULL                         // Reserved
			);
	else
		hres =  CoInitializeSecurity(
			NULL,
			-1,                          // COM authentication
			NULL,                        // Authentication services
			NULL,                        // Reserved
			RPC_C_AUTHN_LEVEL_DEFAULT,   // Default authentication
			RPC_C_IMP_LEVEL_IDENTIFY,    // Default Impersonation
			NULL,                        // Authentication info
			EOAC_NONE,                   // Additional capabilities
			NULL                         // Reserved
			);
			
                      
	if (FAILED(hres))
	{
		cout << "Failed to initialize security. Error code = 0x" << hex << hres << endl;
		cout << _com_error(hres).ErrorMessage() << endl;
		CoUninitialize();
		cout << "press enter to exit" << endl;
		cin.get();			
		return 1;                      // Program has failed.
	}
    
    // Obtain the initial locator to WMI -------------------------

    IWbemLocator *pLoc = NULL;
    hres = CoCreateInstance(CLSID_WbemLocator, 0, CLSCTX_INPROC_SERVER, IID_IWbemLocator, (LPVOID *) &pLoc);
 
	if (FAILED(hres))
	{
		cout << "Failed to create IWbemLocator object. " << "Err code = 0x" << hex << hres << endl;
		cout << _com_error(hres).ErrorMessage() << endl;
		CoUninitialize();
		cout << "press enter to exit" << endl;
		cin.get();				
		return 1;                 // Program has failed.
	}

    // Connect to WMI through the IWbemLocator::ConnectServer method

    IWbemServices *pSvc = NULL;
	
    // Connect to the [WMINAMESPACE] namespace
    // and obtain pointer pSvc to make IWbemServices calls.
	if (localconn)	
		hres = pLoc->ConnectServer(
			 _bstr_t(strNetworkResource),      // Object path of WMI namespace
			 NULL,                    // User name. NULL = current user
			 NULL,                    // User password. NULL = current
			 0,                       // Locale. NULL indicates current
			 NULL,                    // Security flags.
			 0,                       // Authority (e.g. Kerberos)
			 0,                       // Context object
			 &pSvc                    // pointer to IWbemServices proxy
			 );
	else
		hres = pLoc->ConnectServer(
			_bstr_t(strNetworkResource),  // Object path of WMI namespace
			_bstr_t(pszName),             // User name
			_bstr_t(pszPwd),              // User password
			NULL,                // Locale
			NULL,                // Security flags
			NULL,				 // Authority
			NULL,                // Context object
			&pSvc                // IWbemServices proxy
			);
			
			
	if (FAILED(hres))
	{
		cout << "Could not connect. Error code = 0x" << hex << hres << endl;
		cout << _com_error(hres).ErrorMessage() << endl;
		pLoc->Release();
		CoUninitialize();
		cout << "press enter to exit" << endl;
		cin.get();					
		return 1;                // Program has failed.
	}

	cout << "Connected to [WMINAMESPACE] WMI namespace" << endl;

    // Set security levels on the proxy -------------------------
	if (localconn)
		hres = CoSetProxyBlanket(
		   pSvc,                        // Indicates the proxy to set
		   RPC_C_AUTHN_WINNT,           // RPC_C_AUTHN_xxx
		   RPC_C_AUTHZ_NONE,            // RPC_C_AUTHZ_xxx
		   NULL,                        // Server principal name
		   RPC_C_AUTHN_LEVEL_CALL,      // RPC_C_AUTHN_LEVEL_xxx
		   RPC_C_IMP_LEVEL_IMPERSONATE, // RPC_C_IMP_LEVEL_xxx
		   NULL,                        // client identity
		   EOAC_NONE                    // proxy capabilities
		);
	else
	{
		// Create COAUTHIDENTITY that can be used for setting security on proxy
		memset(&authIdent, 0, sizeof(COAUTHIDENTITY));
		authIdent.PasswordLength = wcslen (pszPwd);
		authIdent.Password = (USHORT*)pszPwd;
		authIdent.User = (USHORT*)pszName;
		authIdent.UserLength = wcslen(pszName);
		authIdent.Domain = 0;
		authIdent.DomainLength = 0;
		authIdent.Flags = SEC_WINNT_AUTH_IDENTITY_UNICODE;
		userAcct = &authIdent;

		hres = CoSetProxyBlanket(
		   pSvc,                           // Indicates the proxy to set
		   RPC_C_AUTHN_DEFAULT,            // RPC_C_AUTHN_xxx
		   RPC_C_AUTHZ_DEFAULT,            // RPC_C_AUTHZ_xxx
		   COLE_DEFAULT_PRINCIPAL,         // Server principal name
		   RPC_C_AUTHN_LEVEL_PKT_PRIVACY,  // RPC_C_AUTHN_LEVEL_xxx
		   RPC_C_IMP_LEVEL_IMPERSONATE,    // RPC_C_IMP_LEVEL_xxx
		   userAcct,                       // client identity
		   EOAC_NONE                       // proxy capabilities
		);
	}
	
	
	if (FAILED(hres))
	{
		cout << "Could not set proxy blanket. Error code = 0x" << hex << hres << endl;
		cout << _com_error(hres).ErrorMessage() << endl;
		pSvc->Release();
		pLoc->Release();     
		CoUninitialize();
		cout << "press enter to exit" << endl;
		cin.get();					
		return 1;               // Program has failed.
	}

    // Use the IWbemServices pointer to make requests of WMI ----

    BSTR MethodName = SysAllocString(L"[WMIMETHOD]");
    BSTR ClassName = SysAllocString(L"[WMICLASSNAME]");

    IWbemClassObject* pClass = NULL;
    hres = pSvc->GetObject(ClassName, 0, NULL, &pClass, NULL);

    IWbemClassObject* pInParamsDefinition = NULL;
    hres = pClass->GetMethod(MethodName, 0, &pInParamsDefinition, NULL);

    IWbemClassObject* pClassInstance = NULL;
    hres = pInParamsDefinition->SpawnInstance(0, &pClassInstance);

[CPPCODEINPARAMS]	

	// Execute Method
	IWbemClassObject* pOutParams = NULL;
	hres = pSvc->ExecMethod(L"[WMIPATH]", MethodName, 0,
	NULL, pClassInstance, &pOutParams, NULL);

	if (FAILED(hres))
	{
		cout << "Could not execute method. Error code = 0x" << hex << hres << endl;
		cout << _com_error(hres).ErrorMessage() << endl;		
		SysFreeString(ClassName);
		SysFreeString(MethodName);
		if (pClass)	pClass->Release();
		if (pInParamsDefinition) pInParamsDefinition->Release();
		if (pOutParams) pOutParams->Release();
		if (pSvc) pSvc->Release();
		if (pLoc) pLoc->Release();     
		CoUninitialize();
		cout << "press enter to exit" << endl;
		cin.get();			
		return 1;               // Program has failed.
	}


[CPPCODEOUTPARAMS]	

    // Clean up    
	SysFreeString(ClassName);
	SysFreeString(MethodName);	
	if (pClass)	pClass->Release();
	if (pInParamsDefinition) pInParamsDefinition->Release();
	if (pOutParams)	pOutParams->Release();
	if (pLoc) pLoc->Release();
	if (pSvc) pSvc->Release();
	CoUninitialize();
	cout << "press enter to exit" << endl;
	cin.get();	
	return 0;
}
//---------------------------------------------------------------------------
