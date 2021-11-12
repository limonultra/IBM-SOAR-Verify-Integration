# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for definitive_verify2"""

import base64
import os
import io
try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition

RES_FILE = "data/export.res"


def codegen_reload_data():
    """
    Parameters required reload codegen for the definitive_verify2 package
    """
    return {
        "package": u"definitive_verify2",
        "message_destinations": [u"find_users_verify", u"mreset_user_verify"],
        "functions": [u"fn_find_users", u"fn_reset_password_verify"],
        "workflows": [u"wk_find_users", u"wk_reset_user"],
        "actions": [u"Encontrar Usuarios", u"Resetear Usuario"],
        "incident_fields": [],
        "incident_artifact_types": [],
        "incident_types": [],
        "datatables": [u"tb_usuarios"],
        "automatic_tasks": [],
        "scripts": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM Resilient Platform Version: 42.0.7058

    Contents:
    - Message Destinations:
        - find_users_verify
        - mreset_user_verify
    - Functions:
        - fn_find_users
        - fn_reset_password_verify
    - Workflows:
        - wk_find_users
        - wk_reset_user
    - Rules:
        - Encontrar Usuarios
        - Resetear Usuario
    - Data Tables:
        - tb_usuarios
    """

    res_file = os.path.join(os.path.dirname(__file__), RES_FILE)
    if not os.path.isfile(res_file):
        raise FileNotFoundError("{} not found".format(RES_FILE))

    with io.open(res_file, mode='rt') as f:
        b64_data = base64.b64encode(f.read().encode('utf-8'))
        yield ImportDefinition(b64_data)