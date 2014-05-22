# Anaconda Demo

This demo is running at anaconda-demo.herokuapp.com

## Local Installation

To run this locally:

1. Clone the repo: `git clone https://github.com/ForgeApps/anaconda-demo.git`

2. `bundle install`

3. `rake db:create` - you'll need to have PostgreSQL installed, or use a different database and update `database.yml` accordingly.

4. Set up an S3 bucket and follow the instructions in the Anaconda readme for CORS and IAM.

5. Add the security credentials to your `application.yml` file. Example:
    
        AWS_ACCESS_KEY:Access Key ID: AK1234567LAKNFJAS
        AWS_SECRET_KEY: AW5LBNARHLNLDJKFMYAWSASECRETKEY
        AWS_BUCKET: my-anaconda-upload-bucket
        AWS_ENDPOINT: my-anaconda-upload-bucket.s3-us-west-2.amazonaws.com

6. Start your server. Happy uploading!