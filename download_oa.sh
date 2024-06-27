curl --location "http://makini-api.test/request-docs/api?openapi=true&tag=EAM/CMMS" -o oas3_eam.json
curl --location http://makini-api.test/request-docs/api?openapi=true&tag=ERP -o oas3_erp.json
curl --location http://makini-api.test/request-docs/api?openapi=true&tag=WMS -o oas3_wms.json
curl --location http://makini-api.test/request-docs/api?openapi=true&tag=System -o oas3_system.json


wget "http://makini-api.test/request-docs/api?openapi=true&tag=EAM/CMMS" -O oas3_eam.json