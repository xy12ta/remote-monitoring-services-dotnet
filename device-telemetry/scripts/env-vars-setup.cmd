:: Copyright (c) Microsoft. All rights reserved.

:: Prepare the environment variables used by the application.

:: Some settings are used to connect to an external dependency, e.g. Azure IoT Hub and IoT Hub Manager API
:: Depending on which settings and which dependencies are needed, edit the list of variables

:: see: Shared access policies => key name => Connection string
SETX PCS_TELEMETRY_DOCUMENTDB_CONNSTRING "..."

:: The URL where IoT Hub Manager web service is listening
SETX PCS_STORAGEADAPTER_WEBSERVICE_URL "http://127.0.0.1:9022/v1"

:: Endpoint to reach the authentication service
SETX PCS_AUTH_WEBSERVICE_URL "http://127.0.0.1:9001/v1"

:: The OpenId tokens issuer URL, e.g. https://sts.windows.net/12000000-3400-5600-0000-780000000000/
SETX PCS_AUTH_ISSUER "{enter the token issuer URL here}"

:: The intended audience of the tokens, e.g. your Client Id
SETX PCS_AUTH_AUDIENCE "{enter the tokens audience here}"

:: The tenant for the Azure Active Directory application
:: see: Azure Portal => Azure Active Directory => Properties => Directory ID
SETX PCS_AAD_TENANT="{enter the Azure Active Directory Tenant for the application here}"

:: The Application ID registered with Azure Active Directory
:: see: Azure Portal => Azure Active Directory => App Registrations => Your App => Application ID
SETX PCS_AAD_APPID="{enter Azure Active Directory application ID here}"

:: The Application Secret for your Azure Active Directory Application
:: see: Azure Portal => Azure Active Directory => App Registrations => Your App => Settings => Passwords
SETX PCS_AAD_APPSECRET="{enter your application secret here}"

:: The storage type for telemetry messages. Default is "tsi". Allowed values: ["cosmosdb", "tsi"]
SETX PCS_TELEMETRY_STORAGE_TYPE="tsi"

:: The FQDN (Fully Qualified Domain Name) for the Time Series endpoint
:: see: Azure Portal => Your Resource Group => Time Series Insights Environment => Data Access FQDN
SETX PCS_TSI_FQDN="{enter your Time Series FQDN here}"

:: The name of the event hub that alarms with actions are written to
SETX PCS_ACTION_EVENTHUB_NAME "{Enter event hub name here}"

:: The connection string of the event hub namespace that alarms with actions are written to
:: see: Azure Portal => Your resource group => your event hub namespace => Shared access policies
SETX PCS_ACTION_EVENTHUB_CONNSTRING "{Endpoint=sb://....servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=...}"

:: Endpoint of logic app workflow. 
:: See Azure Portal => Your resource group => Your Logic App => Logic App Designer => When a Http Request is received => HTTP POST URL
SETX PCS_LOGICAPP_ENDPOINT_URL "{Enter endpoint here}"

:: Azure Blob Storage Connection String
:: See Azure Portal => Your resource group => Your Storage Account => Access keys => Connection String
SETX PCS_AZUREBLOB_CONNSTRING "{Enter connection string here}"

:: Url of your solution
SETX PCS_SOLUTION_WEBSITE_URL "{Enter solution url}"
