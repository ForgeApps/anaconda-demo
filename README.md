# Anaconda Demo

This demo is running at anaconda-demo.herokuapp.com

## Local Installation

To run this locally:

1. Clone the repo: `git clone https://github.com/ForgeApps/anaconda-demo.git`

2. `bundle install`

you'll need to have PostgreSQL installed, or a different database solution

3. Then run: `rake db:create`

4. Set up an S3 bucket and follow the instructions in the Anaconda readme for CORS and IAM.

5. Add the security credentials to your `application.yml` file. Example:
    
        AWS_ACCESS_KEY:Access Key ID: AK1234567LAKNFJAS
        AWS_SECRET_KEY: AW5LBNARHLNLDJKFMYAWSASECRETKEY
        AWS_BUCKET: my-anaconda-upload-bucket

6. 