# -*- encoding: utf-8 -*-
# stub: terraforming 0.18.0 ruby lib

Gem::Specification.new do |s|
  s.name = "terraforming".freeze
  s.version = "0.18.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daisuke Fujita".freeze]
  s.date = "2019-05-11"
  s.description = "Export existing AWS resources to Terraform style (tf, tfstate)".freeze
  s.email = ["dtanshi45@gmail.com".freeze]
  s.executables = ["terraforming".freeze]
  s.files = ["bin/terraforming".freeze]
  s.homepage = "https://github.com/dtan4/terraforming".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Export existing AWS resources to Terraform style (tf, tfstate)".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk-autoscaling>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-cloudwatch>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-dynamodb>.freeze, ["~> 1.18"])
      s.add_runtime_dependency(%q<aws-sdk-ec2>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-efs>.freeze, ["~> 1", ">= 1.13.0"])
      s.add_runtime_dependency(%q<aws-sdk-elasticache>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-elasticloadbalancing>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-elasticloadbalancingv2>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-iam>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-kms>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-rds>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-redshift>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-route53>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-s3>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-sns>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<aws-sdk-sqs>.freeze, ["~> 1"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.12.1"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.8.13"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.14.1"])
    else
      s.add_dependency(%q<aws-sdk-autoscaling>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-cloudwatch>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-dynamodb>.freeze, ["~> 1.18"])
      s.add_dependency(%q<aws-sdk-ec2>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-efs>.freeze, ["~> 1", ">= 1.13.0"])
      s.add_dependency(%q<aws-sdk-elasticache>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-elasticloadbalancing>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-elasticloadbalancingv2>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-iam>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-kms>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-rds>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-redshift>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-route53>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-sns>.freeze, ["~> 1"])
      s.add_dependency(%q<aws-sdk-sqs>.freeze, ["~> 1"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.12.1"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.13"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.14.1"])
    end
  else
    s.add_dependency(%q<aws-sdk-autoscaling>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-cloudwatch>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-dynamodb>.freeze, ["~> 1.18"])
    s.add_dependency(%q<aws-sdk-ec2>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-efs>.freeze, ["~> 1", ">= 1.13.0"])
    s.add_dependency(%q<aws-sdk-elasticache>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-elasticloadbalancing>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-elasticloadbalancingv2>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-iam>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-kms>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-rds>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-redshift>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-route53>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-sns>.freeze, ["~> 1"])
    s.add_dependency(%q<aws-sdk-sqs>.freeze, ["~> 1"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.12.1"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, ["~> 0.8.13"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.2"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.14.1"])
  end
end
