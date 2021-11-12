# -*- coding: utf-8 -*-

"""AppFunction implementation"""

import requests
import json
from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields

PACKAGE_NAME = "definitive_verify2"
FN_NAME = "fn_find_users"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'fn_find_users'"""

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
        "schemas": [
        "urn:ietf:params:scim:api:messages:2.0:SearchRequest"
        ],
        "filter": "urn:ietf:params:scim:schemas:core:2.0:User:name.givenName sw \""+fn_inputs.userid+"\""
        })

        headers = { 'Content-Type': 'application/scim+json','realm': 'Ideas', 'Authorization': 'Bearer ' + login_data.text}
        try:
            print ('Connecting to isvg')
            searchdata = requests.post( "https://172.16.60.45:9343/igi/v2/agc/users/.search" , headers=headers, data=payload, verify=False)

        except:
            print('Fallinglogging')
            
        usuario=json.loads(searchdata.content)
        numusers=usuario['totalResults']
        results = {}
        results['total'] = usuario['totalResults']
        for x in range(numusers):
            userid=usuario['resources'][x]['id']
            userAlias=usuario['resources'][x]['userName']
            userName=usuario['resources'][x]['name']['givenName']
            userLastName=usuario['resources'][x]['name']['familyName']
            userEmails=usuario['resources'][x]['emails'][0]['value']
            results[x] = {}
            results[x]['userid'] = userid
            results[x]['username'] = userAlias
            results[x]['nombre'] = userName
            results[x]['apellido'] = userLastName
            results[x]['email'] = userEmails

        yield self.status_message("Finished running App Function: '{0}'".format(FN_NAME))
        
        yield FunctionResult(results)
        # yield FunctionResult({}, success=False, reason="Bad call")
