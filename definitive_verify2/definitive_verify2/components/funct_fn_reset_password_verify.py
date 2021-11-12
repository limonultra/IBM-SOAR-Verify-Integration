# -*- coding: utf-8 -*-

"""AppFunction implementation"""
import requests
import json
from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields

PACKAGE_NAME = "definitive_verify2"
FN_NAME = "fn_reset_password_verify"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'fn_reset_password_verify'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
       

        yield self.status_message("Starting App Function: '{0}'".format(FN_NAME))

        
        headers = {'realm': 'Admin', 'Authorization': 'Basic YWRtaW46YWRtaW4='}
        s = requests.session()
        try:
            print ('Connecting to isvg')
            login_data = requests.get( "https://172.16.60.45:9343/igi/v2/security/login" ,headers = headers , verify=False)
            print (login_data.text)
        except:
            print('Fallinglogging')
            print (s.headers)
            
        payload = json.dumps({
        "schemas" : ["urn:ibm:params:scim:api:messages:2.0:ChangePwd"],
        "IGIPwd" : "null",
        "newPassword":"Smart1a."
        })

        headers = {'Content-Type': 'application/scim+json','realm': 'Ideas', 'Authorization': 'Bearer ' + login_data.text}
        try:
            print ('Connecting to isvg to reset password')
            changepassword = requests.post("https://172.16.60.45:9343/igi/v2/agc/users/accounts/"+fn_inputs.userid+"/password",headers=headers, data=payload, verify=False)
            print (changepassword.text)
		
        except:
            print('FallingChange')
        # yield FunctionResult({}, success=False, reason="Bad call")
                 
        yield self.status_message("Finished running App Function: '{0}'".format(FN_NAME))

        results = {"mock_key": "Mock Value!"}

        yield FunctionResult(results)
        # yield FunctionResult({}, success=False, reason="Bad call")
