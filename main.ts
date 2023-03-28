import { Construct } from "constructs";
import { App, TerraformStack } from "cdktf";
import * as google from '@cdktf/provider-google';

const project = 'cuddly-spork';
const region = 'us-central1';
const repository = 'cuddly-spork';

class MyStack extends TerraformStack {
  constructor(scope: Construct, id: string) {
    super(scope, id);

    new google.provider.GoogleProvider(this, 'google', {
        project,
        region,
    });

    new google.cloudbuildTrigger.CloudbuildTrigger(this, 'buildTrigger', {
        filename: 'cloudbuild.yaml',
        github: {
            name: repository,
            owner: 'hsmtkk',
            push: {
                branch: 'main',
            },
        },
    });

    new google.appEngineApplication.AppEngineApplication(this, 'googleAppEngine', {
        locationId: 'us-central',
    });

  }
}

const app = new App();
new MyStack(app, "cuddly-spork");
app.synth();
