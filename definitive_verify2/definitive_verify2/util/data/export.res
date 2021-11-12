{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Encontrar Usuarios",
      "id": 33,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Encontrar Usuarios",
      "object_type": "artifact",
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "7e1644bb-7878-4bed-aaa8-df6bdb67d8ce",
      "view_items": [],
      "workflows": [
        "wk_find_users"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Resetear Usuario",
      "id": 35,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Resetear Usuario",
      "object_type": "tb_usuarios",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "62025cdb-65ac-4437-9c60-0bfd96fcc0f0",
      "view_items": [],
      "workflows": [
        "wk_reset_user"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1636371802008,
  "export_format_version": 2,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/userid",
      "hide_notification": false,
      "id": 277,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "userid",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "templates": [],
      "text": "userid",
      "tooltip": "",
      "type_id": 11,
      "uuid": "ca758713-ad79-4ac1-ae9b-817ff2fdf822",
      "values": []
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "created_date": 1636114220687,
      "creator": {
        "display_name": "Resilient Sysadmin",
        "id": 6,
        "name": "cliente@ibm.com",
        "type": "user"
      },
      "description": {
        "content": null,
        "format": "text"
      },
      "destination_handle": "find_users_verify",
      "display_name": "fn_find_users",
      "export_key": "fn_find_users",
      "id": 18,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 6,
        "name": "cliente@ibm.com",
        "type": "user"
      },
      "last_modified_time": 1636369694073,
      "name": "fn_find_users",
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "uuid": "7ac5ca64-23d9-4280-b23f-6c4527ed434b",
      "version": 4,
      "view_items": [
        {
          "content": "ca758713-ad79-4ac1-ae9b-817ff2fdf822",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "wk_find_users",
          "object_type": "artifact",
          "programmatic_name": "wk_find_users",
          "tags": [
            {
              "tag_handle": "verify_resilient",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 24
        }
      ]
    },
    {
      "created_date": 1636114220733,
      "creator": {
        "display_name": "Resilient Sysadmin",
        "id": 6,
        "name": "cliente@ibm.com",
        "type": "user"
      },
      "description": {
        "content": null,
        "format": "text"
      },
      "destination_handle": "mreset_user_verify",
      "display_name": "fn_reset_password_verify",
      "export_key": "fn_reset_password_verify",
      "id": 19,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 6,
        "name": "cliente@ibm.com",
        "type": "user"
      },
      "last_modified_time": 1636369694131,
      "name": "fn_reset_password_verify",
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "uuid": "efa1dd85-8078-4aef-90ea-bf0583e4e7e2",
      "version": 4,
      "view_items": [
        {
          "content": "ca758713-ad79-4ac1-ae9b-817ff2fdf822",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "wk_reset_user",
          "object_type": "tb_usuarios",
          "programmatic_name": "wk_reset_user",
          "tags": [],
          "uuid": null,
          "workflow_id": 25
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 14,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1636371801490,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1636371801490,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [
        "285f6c11-b01d-4d17-8c82-d5b9962aca0c"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "find_users_verify",
      "name": "find_users_verify",
      "programmatic_name": "find_users_verify",
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "users": [
        "cliente@ibm.com"
      ],
      "uuid": "c4d0ae07-5fbe-405f-b36c-cce13a84ee7d"
    },
    {
      "api_keys": [
        "285f6c11-b01d-4d17-8c82-d5b9962aca0c"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "mreset_user_verify",
      "name": "mreset_user_verify",
      "programmatic_name": "mreset_user_verify",
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "users": [
        "cliente@ibm.com"
      ],
      "uuid": "1ac1e85f-0054-4658-993e-216d01230a99"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 7058,
    "major": 42,
    "minor": 0,
    "version": "42.0.7058"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [
    {
      "actions": [],
      "display_name": "Usuarios",
      "export_key": "tb_usuarios",
      "fields": {
        "tb_email": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "tb_usuarios/tb_email",
          "hide_notification": false,
          "id": 270,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tb_email",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Email",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "3c6fb6a2-1ec1-411b-882c-f3b6bb5c55da",
          "values": [],
          "width": 165
        },
        "tb_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "tb_usuarios/tb_id",
          "hide_notification": false,
          "id": 275,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tb_id",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Id",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "04e40290-45a0-48dd-8d1f-f1b32b3e9709",
          "values": [],
          "width": 16
        },
        "tb_lastname": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "tb_usuarios/tb_lastname",
          "hide_notification": false,
          "id": 269,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tb_lastname",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Apellidos",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "3ce1762e-17c5-4f42-ab9b-e7085b3435fb",
          "values": [],
          "width": 165
        },
        "tb_name": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "tb_usuarios/tb_name",
          "hide_notification": false,
          "id": 271,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tb_name",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Nombre",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "dc4a6f27-0504-4911-bf8d-b54f63cd9ae6",
          "values": [],
          "width": 165
        },
        "tb_username": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "tb_usuarios/tb_username",
          "hide_notification": false,
          "id": 272,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tb_username",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Username",
          "tooltip": "",
          "type_id": 1000,
          "uuid": "cb51c32f-c9cf-4b66-987b-da212ec93f8b",
          "values": [],
          "width": 167
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [],
      "type_id": 8,
      "type_name": "tb_usuarios",
      "uuid": "5a2e355a-fb41-4f0e-b4ed-eb6371287dd3"
    }
  ],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 24,
        "workflow_id": "wk_find_users",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wk_find_users\" isExecutable=\"true\" name=\"wk_find_users\"\u003e\u003cdocumentation/\u003e\u003cserviceTask id=\"ServiceTask_11n6nu1\" name=\"fn_find_users\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7ac5ca64-23d9-4280-b23f-6c4527ed434b\"\u003e{\"inputs\":{},\"post_processing_script\":\"if results.success:\\r\\n    for x in range (results.content[\u0027total\u0027]):\\r\\n      user = u\\\"\\\"\\\"{0}\\\"\\\"\\\".format(x)\\r\\n      dt = incident.addRow(\\\"tb_usuarios\\\")\\r\\n      dt.tb_id = results.content[user][\u0027userid\u0027]\\r\\n      dt.tb_username = results.content[user][\u0027username\u0027]\\r\\n      dt.tb_name= results.content[user][\u0027nombre\u0027]\\r\\n      dt.tb_lastname= results.content[user][\u0027apellido\u0027]\\r\\n      dt.tb_email = results.content[user][\u0027email\u0027]\\r\\n\\r\\nincident.addNote(u\\\"Reset realizado con \u00e9xito\\\")\\r\\n\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.userid=artifact.value\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0s03lmb\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_10bznsq\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cendEvent id=\"EndEvent_1ttb8ji\"\u003e\u003cincoming\u003eSequenceFlow_10bznsq\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_10bznsq\" sourceRef=\"ServiceTask_11n6nu1\" targetRef=\"EndEvent_1ttb8ji\"/\u003e\u003cstartEvent id=\"StartEvent_1d9l3sw\"\u003e\u003coutgoing\u003eSequenceFlow_0s03lmb\u003c/outgoing\u003e\u003c/startEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0s03lmb\" sourceRef=\"StartEvent_1d9l3sw\" targetRef=\"ServiceTask_11n6nu1\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_11n6nu1\" id=\"ServiceTask_11n6nu1_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"217\" y=\"259\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1ttb8ji\" id=\"EndEvent_1ttb8ji_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"473.22875816993474\" y=\"179.04575163398692\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"491.22875816993474\" y=\"218.04575163398692\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_10bznsq\" id=\"SequenceFlow_10bznsq_di\"\u003e\u003comgdi:waypoint x=\"317\" xsi:type=\"omgdc:Point\" y=\"299\"/\u003e\u003comgdi:waypoint x=\"418\" xsi:type=\"omgdc:Point\" y=\"299\"/\u003e\u003comgdi:waypoint x=\"418\" xsi:type=\"omgdc:Point\" y=\"197\"/\u003e\u003comgdi:waypoint x=\"473\" xsi:type=\"omgdc:Point\" y=\"197\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"388\" y=\"241.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_1d9l3sw\" id=\"StartEvent_1d9l3sw_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"37.388455538221535\" y=\"256.1271450858034\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"55.388455538221535\" y=\"295.1271450858034\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0s03lmb\" id=\"SequenceFlow_0s03lmb_di\"\u003e\u003comgdi:waypoint x=\"73\" xsi:type=\"omgdc:Point\" y=\"274\"/\u003e\u003comgdi:waypoint x=\"145\" xsi:type=\"omgdc:Point\" y=\"274\"/\u003e\u003comgdi:waypoint x=\"145\" xsi:type=\"omgdc:Point\" y=\"299\"/\u003e\u003comgdi:waypoint x=\"217\" xsi:type=\"omgdc:Point\" y=\"299\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"160\" y=\"279.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 24,
      "creator_id": "cliente@ibm.com",
      "description": "",
      "export_key": "wk_find_users",
      "last_modified_by": "cliente@ibm.com",
      "last_modified_time": 1636369811924,
      "name": "wk_find_users",
      "object_type": "artifact",
      "programmatic_name": "wk_find_users",
      "tags": [
        {
          "tag_handle": "verify_resilient",
          "value": null
        }
      ],
      "uuid": "1b9bec24-442f-42eb-9caf-b0f71e46fd5b",
      "workflow_id": 24
    },
    {
      "actions": [],
      "content": {
        "version": 12,
        "workflow_id": "wk_reset_user",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wk_reset_user\" isExecutable=\"true\" name=\"wk_reset_user\"\u003e\u003cdocumentation/\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0ij2w06\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1oq4net\" name=\"fn_reset_password_verify\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"efa1dd85-8078-4aef-90ea-bf0583e4e7e2\"\u003e{\"inputs\":{},\"post_processing_script\":\"user = u\\\"\\\"\\\"Usuario {0} reseteado correctamente\\\"\\\"\\\".format(row.tb_username)\\r\\nincident.addNote(user)\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.userid = row.tb_id\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0ij2w06\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0un18y6\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0ij2w06\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1oq4net\"/\u003e\u003cendEvent id=\"EndEvent_0g0nth8\"\u003e\u003cincoming\u003eSequenceFlow_0un18y6\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0un18y6\" sourceRef=\"ServiceTask_1oq4net\" targetRef=\"EndEvent_0g0nth8\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1oq4net\" id=\"ServiceTask_1oq4net_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"283\" y=\"229\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ij2w06\" id=\"SequenceFlow_0ij2w06_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"241\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"241\" xsi:type=\"omgdc:Point\" y=\"269\"/\u003e\u003comgdi:waypoint x=\"283\" xsi:type=\"omgdc:Point\" y=\"269\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"256\" y=\"231.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0g0nth8\" id=\"EndEvent_0g0nth8_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"466.4959254947613\" y=\"214.70779976717114\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"484.4959254947613\" y=\"254.70779976717114\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0un18y6\" id=\"SequenceFlow_0un18y6_di\"\u003e\u003comgdi:waypoint x=\"383\" xsi:type=\"omgdc:Point\" y=\"269\"/\u003e\u003comgdi:waypoint x=\"425\" xsi:type=\"omgdc:Point\" y=\"269\"/\u003e\u003comgdi:waypoint x=\"425\" xsi:type=\"omgdc:Point\" y=\"233\"/\u003e\u003comgdi:waypoint x=\"466\" xsi:type=\"omgdc:Point\" y=\"233\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"440\" y=\"245\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 12,
      "creator_id": "cliente@ibm.com",
      "description": "",
      "export_key": "wk_reset_user",
      "last_modified_by": "cliente@ibm.com",
      "last_modified_time": 1636370864457,
      "name": "wk_reset_user",
      "object_type": "tb_usuarios",
      "programmatic_name": "wk_reset_user",
      "tags": [],
      "uuid": "bc33397b-d8a0-4db9-b739-ce8001108240",
      "workflow_id": 25
    }
  ],
  "workspaces": []
}
