# openshift-filebrowser

OpenShift-compatible variant of https://filebrowser.org/

## Getting Started

1. Log in to OpenShift Container Platform (OCP) console and switch to 'Developer' view

2. Click '+Add' and select 'From Dockerfile':

   -  Git Repo URL: `https://github.com/acch/openshift-filebrowser`

   -  Dockerfile path: `Dockerfile` (default)

   -  Name: `openshift-filebrowser-git` (just an example)

   -  Ensure that `Create a Route to the Application` is selected (default)

3. Next, select the newly created _Deployment_ and click 'Actions → Add Storage'

   - Either choose an existing _Claim_, or 'Create new claim':

       -   Storage Class: Select your storage class

       -   Persistent Volume Claim Name: `filebrowser-claim` (just an example)

       -   Access Mode: `Shared Access (RWX)`

       -   Size: Choose desired size

       -   Volume Mode: `Filesystem` (default)

   - **Important** - Mount Path: `/srv`

4. You're all set! Find the _Route_ that was created for the application and open it from a web browser. Default Username is `admin`, default Password is `admin`.

🚀 Enjoy!

## Copyright and license

Copyright 2021 Achim Christ, released under the terms of the [MIT License](LICENSE)
