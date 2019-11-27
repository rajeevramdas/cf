# Cloudformaion template for cognito user creation for Kinesis Data Generator

[Kinesis data generator](https://awslabs.github.io/amazon-kinesis-data-generator/) is a UI that can be used to generate and send transactions to Amazon Kinesis Firehose. However the current process uses a cloudformation template, in conjunction with a lambda function to provision a cognito user for authentication, and is tied to using the us-west-2 region. The template included in the subdirectory can be used to create a cognito user , which can be used with Kinesis Data Generator in any region.

You can use the runcf.sh script included in the subdirectory to create the cognito user. You have to specify your e-mail address as a parameter.

Once the user is created you have to reset the password before attempting to login using the kinesis data generator.
One option is to use the aws cli to set this peramant password as shown below

aws cognito-idp admin-set-user-password \\
--user-pool-id <YourUserPoolIdHere> \\
--username admin \\
--password '<YourNewPassword>' --permanent
