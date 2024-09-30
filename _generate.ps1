curl https://demo.mailcow.email/api/openapi.yaml > openapi.yaml
(Get-Content openapi.yaml).Replace('(CORS)', 'CORS') | Set-Content openapi.yaml
nswag openapi2csclient /input:openapi.yaml /classname:MailcowApiV1 /namespace:LisaSports.MailcowApi /output:MailcowApiV1.cs
(Get-Content MailcowApiV1.cs).Replace('return default(void);', 'return;') | Set-Content MailcowApiV1.cs