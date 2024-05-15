## PUT assets

#### INFOR-E

| Field            | Require                         |
| ---------------- | ------------------------------- |
| teamKey          | <b style="color:grey">False</b> |
| name             | <b style="color:red">True</b>   |
| description      | <b style="color:grey">False</b> |
| manufacturerName | <b style="color:grey">False</b> |
| serialNumber     | <b style="color:grey">False</b> |

## POST work-orders

#### MAINTAIN-X

| Field             | Require                         |
| ----------------- | ------------------------------- |
| siteKey           | <b style="color:red">True</b>   |
| assetKey          | <b style="color:grey">False</b> |
| title             | <b style="color:red">True</b>   |
| description       | <b style="color:grey">False</b> |
| scheduledAt       | <b style="color:grey">False</b> |
| dueAt             | <b style="color:grey">False</b> |
| severity          | <b style="color:grey">False</b> |
| status            | <b style="color:grey">False</b> |
| userAssignedKey   | <b style="color:grey">False</b> |
| parts             | <b style="color:grey">False</b> |
| parts.\*.partKey  | <b style="color:grey">False</b> |
| parts.\*.quantity | <b style="color:grey">False</b> |

## PUT work-orders

#### MAINTAIN-X

| Field             | Require                         |
| ----------------- | ------------------------------- |
| siteKey           | <b style="color:red">True</b>   |
| assetKey          | <b style="color:grey">False</b> |
| title             | <b style="color:red">True</b>   |
| description       | <b style="color:grey">False</b> |
| scheduledAt       | <b style="color:grey">False</b> |
| dueAt             | <b style="color:grey">False</b> |
| severity          | <b style="color:grey">False</b> |
| status            | <b style="color:grey">False</b> |
| userAssignedKey   | <b style="color:grey">False</b> |
| parts             | <b style="color:grey">False</b> |
| parts.\*.partKey  | <b style="color:grey">False</b> |
| parts.\*.quantity | <b style="color:grey">False</b> |
