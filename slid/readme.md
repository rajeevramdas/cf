# Updated Cloudformation template to create cognito user for Kinesis Data Generator

[Kinesis Data Generator](https://awslabs.github.io/amazon-kinesis-data-generator/) is a UI that can be used to create and send data to Amazon Kinesis Streams or Firehose. The cloudformation templates provided in the KDG home page, was created before cloudformation supported cognito, and hence uses a lambda function to create the user. There exists a restriction that the cognito configuration is setup in us-west-2.

The cloudformation template provided here, in the code subdirectory, uses cloudformation to create the cognito user to be used with Kinesis data generator, and can be used to setup the user in any region. An additional script runcf.sh is provided, which can be used to run the cloudformation script from aws cli. 

Once the user is created, you have to reset the temporary password, with a new permanent password before you can login to KDG. You can use the aws cli as shown below to set the permanent password.
You can get the user pool id from the cloudformation output

'aws cognito-idp admin-set-user-password \
--user-pool-id \<YourUserPoolId\> \
--username admin \
--password '\<YourNewPassword\>' --permanent'

Once the password is reset, you can use the URL provided in the cloudformation output to login to Kinesis Data Generator

