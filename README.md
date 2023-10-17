# [Issue Tracker](https://issue-tracker-kp.uw.r.appspot.com "Issue Tracker")
Link to site: [https://issue-tracker-kp.uw.r.appspot.com](https://issue-tracker-kp.uw.r.appspot.com "Issue Tracker")

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
  - [Diagrams](#diagrams "Diagrams")
  - [Outline](#outline "Outline")

## Overview <a name="overview"></a>
This project is an issue tracking web app (similar to Asana or Jira) that allows software teams to maintain and manage their development tasks. The issue tracker can be used by teams of developers working collaboratively to help track progress on their own projects. Users can create Organizations that others can join as well as create Projects, each with its own individual Issues representing tasks or bugs. The application is written using JavaScript, React, Chakra UI, NodeJS, and Express. It is deployed through Google Cloud Platform's App Engine with a PostgreSQL database.

## Usage <a name="usage"></a>

### Visit Issue Tracker <a name="visit"></a>
Visit Issue Tracker's home page at the public URL: [https://issue-tracker-kp.uw.r.appspot.com](https://issue-tracker-kp.uw.r.appspot.com "Issue Tracker")

![Screenshot of Issue Tracker home page](https://github.com/realKP/issue-tracker/assets/76978772/d4ba293e-4537-4d7a-94c8-26f200742935)


### Create an Account <a name="create"></a>
To create an account, click **Get Started Free** or **Sign Up** in the top right navigation bar.

![Screenshot of options to create an account](https://github.com/realKP/issue-tracker/assets/76978772/ee5e571b-919f-4af5-954b-d711f3ba9e60)


### Sign in with Existing Account <a name="existing"></a>
Or if you already have an existing account, simply click **Sign In** in the top right navigation bar instead and enter your credentials.

![Screenshot of sign in page](https://github.com/realKP/issue-tracker/assets/76978772/0017eb9b-8697-4cc9-89c3-dd99cdc3f8cb)


### Create and View Organizations <a name="organizations"></a>
You can create a new organization or join an existing organization with an invite code. You can only be a member of one organization at a time and cannot access any other areas of the web app until you are a member of an organization.

![Screenshot of create or join organization menu](https://github.com/realKP/issue-tracker/assets/76978772/968910b7-4129-43f9-8bac-6f21ab6f34f6)

To create an organization, click the **Create Org** button and enter your new organization's name. You will automatically be added as a member to this organization.

![Screenshot of creating organization menu](https://github.com/realKP/issue-tracker/assets/76978772/7c6a3e3e-226f-4ba7-879a-5c1c8dc26449)

To join an existing organization, click the **Join Org** button instead and enter the unique organization code shared with you. You will then be added as a member to this organization.

![image](https://github.com/realKP/issue-tracker/assets/76978772/cfe2da02-2c27-483d-815a-dc3aed6393b9)

Once you are a member of an organization, you can click on **Organization** in the top left navigation bar to view all members of this organization.

![Screenshot of organization page](https://github.com/realKP/issue-tracker/assets/76978772/e64dd361-7c29-4bb3-8711-7426d1cecd78)

To add more users to an organization, you can click the **Invite** button and copy the unique organization code to share.

![Screenshot of invite code menu](https://github.com/realKP/issue-tracker/assets/76978772/0b0d3126-e86f-4dca-9d00-453db930cfc6)

If you want to leave an organization, click the **Leave Org** button, then click **Leave**. You will again be prompted to either create or join an organization.

![Screenshot of leave organization menu](https://github.com/realKP/issue-tracker/assets/76978772/e41f3ca3-9fbf-4cc5-bb8d-39a837740507)
 

### Create and View Projects <a name="projects"></a>
To create a project within your organization, click on **Projects** in the top left navigation bar, then click the **New Project** button. Enter the project's name and a description for the project.

![Screenshot showing where projects is](https://github.com/realKP/issue-tracker/assets/76978772/ce1206ed-0d01-47dc-9426-9c4b94cab5ab)
![Screenshot showing where new project button is](https://github.com/realKP/issue-tracker/assets/76978772/20b3da6d-94b4-4a20-849e-f8db1dd2e0df)
![Screenshot showing the create project menu](https://github.com/realKP/issue-tracker/assets/76978772/22cab983-9ed3-43cd-9335-c9d86b493d7a)

Your projects are shown on the projects page, where you can edit the name or description and even delete the project. If you delete a project, all the issues associated with that project will also be deleted.

![Screenshot of projects page with project shown](https://github.com/realKP/issue-tracker/assets/76978772/8fc961e0-062f-4d69-b0d1-68c412249508)


### Create and View Issues <a name="issues"></a>
To create an issue associated with a project, begin by clicking on that particular project. You will be directed to the project's issues page. Once there, click on the **New Issue** button. Each field of the form is required.

![Screenshot of a project's issues page](https://github.com/realKP/issue-tracker/assets/76978772/dd9bf408-619e-4b67-8071-66f09b05015a)
![Screenshot of create issue menu](https://github.com/realKP/issue-tracker/assets/76978772/2dc19949-f2be-4d95-8f05-6a934504490d)

You can change the status of an issue or view its details by clicking on the issue on its project's issue page.

![Screenshot highlighting issue on project page](https://github.com/realKP/issue-tracker/assets/76978772/88334c35-99df-4f38-a502-913c0832eda9)
![Screenshot highlighting issue's status drop down menu](https://github.com/realKP/issue-tracker/assets/76978772/99f727ce-e570-4140-a7a6-d16a98877c1f)


### View your Dashboard <a name="dashboard"></a>
Your dashboard is a summary of issues in all projects that are assigned to you. Here you can edit issues as well. To view your dashboard, click on **Dashboard** in the top left navigation bar.

![Screenshot of dashboard](https://github.com/realKP/issue-tracker/assets/76978772/a17e8a69-0e1c-402e-9412-f084aa40697f)
![Screenshot of editing issue from dashboard](https://github.com/realKP/issue-tracker/assets/76978772/aa4f5fa4-db49-4ade-9dfb-6621f6224fc7)

### Sign Out <a name="signout"></a>
Always make sure to sign out when you're done using Issue Tracker. To sign out, click on the profile icon in the top right corner of any page, then click **Sign Out**. 

![Screenshot showing where profile icon is](https://github.com/realKP/issue-tracker/assets/76978772/19b93fa9-2d6b-4596-a995-79fc24a80485)

## Database Design <a name="database"></a>
To provide more detail on how the data in this app relate to each other, I have provided the entity relationship diagram (ERD), schema, and outline used to create the database.

### Diagrams <a name="diagrams"></a>
#### Entity Relationship
For a thorough explanation of the notation used in the ERD below, feel free to read [this article](https://www.freecodecamp.org/news/crows-foot-notation-relationship-symbols-and-how-to-read-diagrams/ "Crow's Foot Notation").


![Entity relationship diagram](https://github.com/realKP/issue-tracker/assets/76978772/9bf4d555-b638-4a0a-bc31-a3d018220694)

#### Schema
The schema below illustrates the primary and foreign key relationships between the various entities. The underlined attributes are the primary key for that entity.

![Database schema](https://github.com/realKP/issue-tracker/assets/76978772/2be5b601-333c-4eae-af28-38219c3b3c9b)

### Outline <a name="outline"></a>
_Note: since most attributes are not nullable, nullable is used where attributes can be NULL_

- Users: records the details of users with accounts
  - user_id: INT, auto-increment, unique, primary key
  - org_id: INT, foreign key
  - user_first_name: VARCHAR
  - user_last_name: VARCHAR
  - user_email: VARCHAR, unique
  - user_password_hash: VARCHAR
  - Relationships:
    - A User can belong to at most one Organization, but an Organization can have zero or more Users.

- Organizations: records the details of organizations created by users
  - org_id: INT, auto-increment, unique, primary key
  - org_creator_id: INT, foreign key
  - org_name: VARCHAR
  - org_create_date: DATE
  - org_invite_code:: VARCHAR
  - Relationships:
    - An Organization can have zero or more Projects, but a Project belongs to only one Organization.
    - _See Users_

- Projects: records the details of projects created by users
  - project_id: INT, auto-increment, unique, primary key
  - org_id: INT, foreign key
  - project_creator_id: INT, foreign key
  - project_name: VARCHAR
  - project_create_date: DATE
  - project_description: VARCHAR, nullable
  - Relationships:
    - A Project can have zero or more Issues, but an Issue belongs to only one Project.
    - _See Organizations_

- Issues: records the details of issues created by users
  - issue_id: INT, auto-increment, unique, primary key
  - project_id: INT, foreign key
  - issue_creator_id: INT, foreign key
  - issue_name: VARCHAR
  - issue_assignee_id: INT, foreign key
  - issue_create_date: DATE
  - issue_type: VARCHAR
  - issue_priority: VARCHAR
  - issue_status: VARCHAR
  - issue_due_date: DATE, nullable
  - issue_description: VARCHAR, nullable
  - Relationships:
    - _See Projects_


