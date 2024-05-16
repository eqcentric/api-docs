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

#### EMAINT

| Field       | Require                         |
| ----------- | ------------------------------- |
| assetKey    | <b style="color:red">True</b>   |
| title       | <b style="color:red">True</b>   |
| scheduledAt | <b style="color:red">True</b>   |
| dueAt       | <b style="color:grey">False</b> |
| description | <b style="color:grey">False</b> |

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

#### INEXTIA

| Field       | Require                         |
| ----------- | ------------------------------- |
| assetKey    | <b style="color:red">True</b>   |
| title       | <b style="color:red">True</b>   |
| severity    | <b style="color:red">True</b>   |
| scheduledAt | <b style="color:red">True</b>   |
| description | <b style="color:grey">False</b> |

#### INFOR-E

| Field                    | Require                         |
| ------------------------ | ------------------------------- |
| assetKey                 | <b style="color:red">True</b>   |
| teamKey                  | <b style="color:grey">False</b> |
| title                    | <b style="color:red">True</b>   |
| documents                | <b style="color:grey">False</b> |
| documents.\*.documentKey | <b style="color:grey">False</b> |

#### UPKEEP

| Field       | Require                         |
| ----------- | ------------------------------- |
| assetKey    | <b style="color:red">True</b>   |
| title       | <b style="color:red">True</b>   |
| severity    | <b style="color:red">True</b>   |
| scheduledAt | <b style="color:red">True</b>   |
| description | <b style="color:grey">False</b> |

#### SERVICE-CHANNEL

| Field           | Require                         |
| --------------- | ------------------------------- |
| organizationKey | <b style="color:red">True</b>   |
| siteKey         | <b style="color:red">True</b>   |
| accountKey      | <b style="color:red">True</b>   |
| title           | <b style="color:red">True</b>   |
| description     | <b style="color:red">True</b>   |
| severity        | <b style="color:red">True</b>   |
| scheduledAt     | <b style="color:red">True</b>   |
| dueAt           | <b style="color:grey">False</b> |

## PUT work-orders

#### EMAINT

| Field       | Require                         |
| ----------- | ------------------------------- |
| assetKey    | <b style="color:grey">False</b> |
| title       | <b style="color:grey">False</b> |
| scheduledAt | <b style="color:grey">False</b> |
| duaAt       | <b style="color:grey">False</b> |
| description | <b style="color:grey">False</b> |

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

#### INEXTIA

| Field       | Require                         |
| ----------- | ------------------------------- |
| title       | <b style="color:grey">False</b> |
| severity    | <b style="color:grey">False</b> |
| scheduledAt | <b style="color:grey">False</b> |
| description | <b style="color:grey">False</b> |

#### INFOR-E

| Field                    | Require                         |
| ------------------------ | ------------------------------- |
| assetKey                 | <b style="color:red">True</b>   |
| teamKey                  | <b style="color:grey">False</b> |
| title                    | <b style="color:grey">False</b> |
| documents                | <b style="color:grey">False</b> |
| documents.\*.documentKey | <b style="color:grey">False</b> |
| materials                | <b style="color:grey">False</b> |
| materials.\*.materialKey | <b style="color:grey">False</b> |

#### UPKEEP

| Field       | Require                         |
| ----------- | ------------------------------- |
| assetKey    | <b style="color:grey">False</b> |
| title       | <b style="color:grey">False</b> |
| severity    | <b style="color:grey">False</b> |
| scheduledAt | <b style="color:grey">False</b> |
| description | <b style="color:grey">False</b> |

#### SERVICE-CHANNEL

| Field       | Require                         |
| ----------- | ------------------------------- |
| description | <b style="color:grey">False</b> |
| severity    | <b style="color:grey">False</b> |
| scheduledAt | <b style="color:grey">False</b> |
| dueAt       | <b style="color:grey">False</b> |

## POST service-requests

#### EMAINT

| Field            | Require                         |
| ---------------- | ------------------------------- |
| userRequestedKey | <b style="color:red">True</b>   |
| title            | <b style="color:red">True</b>   |
| assetKey         | <b style="color:grey">False</b> |
| description      | <b style="color:grey">False</b> |
