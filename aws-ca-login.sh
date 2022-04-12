#!/bin/bash
CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain cpq --domain-owner 127298087018 --query authorizationToken --output text`
npm config set @cpq:registry https://cpq-127298087018.d.codeartifact.us-west-2.amazonaws.com/npm/cpq/
npm config set //cpq-127298087018.d.codeartifact.us-west-2.amazonaws.com/npm/cpq/:always-auth true
npm config set //cpq-127298087018.d.codeartifact.us-west-2.amazonaws.com/npm/cpq/:_authToken ${CODEARTIFACT_AUTH_TOKEN}