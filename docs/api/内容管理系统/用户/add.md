# 新增用户

## 接口地址

```http
GET resume/detail
```

## 请求示例

```curl
curl http://job.example.com/api/1.0/android/2.0/5/resume/detail?resume_id=14
```

## 请求参数

| 参数 | 类型 | 必选 | 说明 |
| --- | --- | --- | --- |
| resume_id | integer | 是 | 简历ID | 

## 响应示例

```json
{
    "state": 1,
    "code": 0,
    "message": "",
    "data": {
        "resume_id": 14,
        "uid": 110001763,
        "name": "benson",
    }
}
```

## 响应字段

| 参数 | 类型 | 必选 | 说明 |
| --- | --- | --- | --- |
| resume_id | integer | 是 | 简历ID | 

