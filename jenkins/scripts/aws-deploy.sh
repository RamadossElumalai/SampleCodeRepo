aws ecs create-cluster --cluster-name ${CLUSTER_NAME} --region ap-south-1

aws ecs register-task-definition --cli-input-json file://fargate-task.json --region ap-south-1

aws ecs list-task-definitions --region eu-west-2

aws ecs create-service --region eu-west-2 --cluster ${CLUSTER_NAME} --service-name fargate-service --task-definition cgiprofessionalnetcoreservices --desired-count 1 --launch-type "FARGATE" --network-configuration "awsvpcConfiguration={subnets=[subnet-06970b3d563f0d27a],securityGroups=[sg-048dfb5f38decb1df],assignPublicIp=ENABLED}"

