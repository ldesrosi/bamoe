# BAMOE framework  

This repo sets up BAM OE 9.1 with underlying dependencies:
1. Kafka
2. Postgresql
3. Keycloak
4. BAMOE Services (data-index, management console, task console)
and
5. BAMOE Application

## Preparing files  
  
You will need to adjust values.xml in folder 1-kafka, 2-postgresql and 3-keycloak:  
- Set storage class to cluster block storage  
- Ingress annotations might need to be adjusted if not nginx  

Adjust files under 4-bamoe-services:
- Persistent volume claims to match storage class
- Adjust the ingress  

## Deployment  
  
To install:  
  
`cd bamoe-app` 
`./deploy.sh` 

To reset the environment:  
  
`./cleanup.sh`  
  

