# circleci_lecture13
Control Node：EC2(Amazon Linux2)  
Target Node：EC2(Amazon Linux2)  

Target NodeのEC2インスタンスにElastic IPを使用した固定IP構成です。

## 概要
このリポジトリでは以下の自動化プロセスをCircleCIで実行します：
1. **CloudFormationの構文チェック**
2. **CloudFormationスタック実行**  
   - EC2、ALB、RDS、S3の作成を含むAWSインフラの構築
3. **Ansibleによる環境構築**
   - EC2インスタンス上でサンプルアプリケーションのセットアップ
4. **Serverspecでのテスト**  
   - インフラの設定確認および動作テスト 

CircleCI実行結果はこちら：  
[CircleCI Execution Result](https://app.circleci.com/pipelines/github/taemimizukura/circleci_lecture13/162/workflows/0370b21f-bf06-461b-9177-f56a4f1f6f3c)

パブリックIPアドレスの動的取得はこちら：  
[circleci-dynamic-ip](https://github.com/taemimizukura/circleci-dynamic-ip)
