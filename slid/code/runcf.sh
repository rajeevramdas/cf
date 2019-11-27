aws cloudformation deploy --template-file kdg.yaml \
--parameter-overrides yourEmail=<YourEmailHere> \
--stack-name kdgStack --capabilities CAPABILITY_NAMED_IAM

