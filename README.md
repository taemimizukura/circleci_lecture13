# circleci_lecture13
## Raisetech 第13回課題実行用リポジトリです。  
【課題内容】  
CircleCI のサンプルに Serverspec や Ansible の処理を追加してください。  

以下の工程をCircleCIで自動化しました。  
①cfn-lint：CloudFormationの構文チェック  
②execute-cloudformation：CloudFormationスタック実行（ALB、RDS、S3追加）  
③execute-ansible：ターゲットノードのEC2インスタンスにサンプルアプリケーションの動作環境構築  
④execute-serverspec：ターゲットノードの環境をテストする  
[Circleci Execution Result](https://app.circleci.com/pipelines/github/taemimizukura/circleci_lecture13/95/workflows/c3d21980-150e-4cec-8bd4-b7706cfee242)