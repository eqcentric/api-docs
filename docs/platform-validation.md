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

## PUT work-orders

#### EMAINT

| Field       | Require                         |
| ----------- | ------------------------------- |
| assetKey    | <b style="color:grey">False</b> |
| title       | <b style="color:grey">False</b> |
| scheduledAt | <b style="color:grey">False</b> |
| duaAt       | <b style="color:grey">False</b> |
| description | <b style="color:grey">False</b> |

## POST service-requests

#### EMAINT

| Field            | Require                         |
| ---------------- | ------------------------------- |
| userRequestedKey | <b style="color:red">True</b>   |
| title            | <b style="color:red">True</b>   |
| assetKey         | <b style="color:grey">False</b> |
| description      | <b style="color:grey">False</b> |
