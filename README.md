# circleci_lecture13
## Raisetech 第13回課題実行用リポジトリです。  
【課題内容】  
CircleCI のサンプルに Serverspec や Ansible の処理を追加してください。  

以下の工程をCircleCIで自動化しました。  
① CloudFormationの構文チェック  
② CloudFormationスタック実行（EC2、ALB、RDS、S3追加）  
③ ターゲットノードのEC2インスタンスにサンプルアプリケーションの動作環境構築  
④ ターゲットノードの環境をテストする  
[CircleCI Execution Result](https://app.circleci.com/pipelines/github/taemimizukura/circleci_lecture13/162/workflows/0370b21f-bf06-461b-9177-f56a4f1f6f3c)
