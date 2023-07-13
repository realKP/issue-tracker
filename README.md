# [Issue Tracker](https://kp-issue-tracker.uw.r.appspot.com "Issue Tracker")
Link to site: [https://kp-issue-tracker.uw.r.appspot.com](https://kp-issue-tracker.uw.r.appspot.com "Issue Tracker")

## Table of Contents
- [Overview](#overview "Overview")
- [Usage](#usage "Usage")
  - [Visit Issue Tracker](#visit "Visit Issue Tracker")
  - [Create an Account](#create "Create an Account")
  - [Sign in with Existing Account](#existing "Sign in with Existing Account")
  - [Create and View Organizations](#organizations "Create and View Organizations")
  - [Create and View Projects](#projects "Create and View Projects")
  - [Create and View Issues](#issues "Create and View Issues")
  - [View your Dashboard](#dashboard "View your Dashboard")
  - [Sign Out](#signout "Sign Out")
- [Database Design](#database "Database Design")

## Overview <a name="overview"></a>
This project is an issue tracking web app (similar to Asana or Jira) that allows software teams to maintain and manage their development tasks. The issue tracker can be used by teams of developers working collaboratively to help track progress on their own projects. Users can create Organizations that others can join as well as create Projects, each with its own individual Issues representing tasks or bugs. The application is written using JavaScript, React, Chakra UI, NodeJS, and Express. It is deployed through Google Cloud Platform's App Engine with a PostgreSQL database.

## Usage <a name="usage"></a>

### Visit Issue Tracker <a name="visit"></a>
Visit Issue Tracker's home page at the public URL: [https://kp-issue-tracker.uw.r.appspot.com](https://kp-issue-tracker.uw.r.appspot.com "Issue Tracker")

![Screenshot of Issue Tracker home page](https://github.com/realKP/issue-tracker/assets/76978772/d4ba293e-4537-4d7a-94c8-26f200742935)


### Create an Account <a name="create"></a>
To create an account, click **Sign Up** in the top right navigation bar or **Get Started Free**.

![Screenshot of options to create an account](https://github.com/realKP/issue-tracker/assets/76978772/ee5e571b-919f-4af5-954b-d711f3ba9e60)


### Sign in with Existing Account <a name="existing"></a>
Or if you already have an existing account, simply click **Sign In** in the top right navigation bar instead and enter your credentials.

![Screenshot of sign in page](https://github.com/realKP/issue-tracker/assets/76978772/0017eb9b-8697-4cc9-89c3-dd99cdc3f8cb)


### Create and View Organizations <a name="organizations"></a>
You must create a new organization or join an existing organization with an invite code. You can only be a member of one organization at a time and cannot access any other areas of the web app until you are a member of an organization.

![Screenshot of create or join organization menu](https://github.com/realKP/issue-tracker/assets/76978772/968910b7-4129-43f9-8bac-6f21ab6f34f6)

To create an organization, click the **Create Org** button and enter your new organization's name. You will automatically be added as a member to this organization.

![Screenshot of creating organization menu](https://github.com/realKP/issue-tracker/assets/76978772/7c6a3e3e-226f-4ba7-879a-5c1c8dc26449)

To join an existing organization, click the **Join Org** button and enter the unique organization code shared with you. You will then be added as a member to this organization.

![image](https://github.com/realKP/issue-tracker/assets/76978772/cfe2da02-2c27-483d-815a-dc3aed6393b9)

Once you are a member of an organization, you can click on **Organization** in the top left navigation bar to view all members of this organization.

![Screenshot of organization page](https://github.com/realKP/issue-tracker/assets/76978772/e64dd361-7c29-4bb3-8711-7426d1cecd78)

To add more users to an organization, you can click the **Invite** button and copy the unique organization code to share.

![Screenshot of invite code menu](https://github.com/realKP/issue-tracker/assets/76978772/0b0d3126-e86f-4dca-9d00-453db930cfc6)

If you want to leave an organization, click the **Leave Org** button, then click **Leave**. You will again be prompted to either create or join an organization.

![Screenshot of leave organization menu](https://github.com/realKP/issue-tracker/assets/76978772/e41f3ca3-9fbf-4cc5-bb8d-39a837740507)
 

### Create and View Projects <a name="projects"></a>







### Create and View Issues <a name="issues"></a>
### View your Dashboard <a name="dashboard"></a>
### Sign Out <a name="signout"></a>


## Database Design <a name="database"></a>
