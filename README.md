# circleci_lecture13
Control Node：EC2(Amazon Linux2)  
Target Node：EC2(Amazon Linux2)  

Elastic IPを使用した固定IP構成です。

以下の工程をCircleCIで自動化しています：  
① CloudFormationの構文チェック  
② CloudFormationスタック実行（EC2、ALB、RDS、S3作成）  
③ AnsibleでEC2インスタンスにサンプルアプリケーションの環境構築  
④ Serverspecで環境のテスト  

CircleCI実行結果はこちら：  
[CircleCI Execution Result](https://app.circleci.com/pipelines/github/taemimizukura/circleci_lecture13/162/workflows/0370b21f-bf06-461b-9177-f56a4f1f6f3c)

パブリックIPアドレスの動的取得はこちら：  
[circleci-dynamic-ip](https://github.com/taemimizukura/circleci-dynamic-ip)
