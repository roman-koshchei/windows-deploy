# Windows Deploy

Example of automated deployment of .NET website to Windows Server.
Windows Server is setup with IIS.

![Screenshot of example](./assets/example.png)

## Steps

- Generate SSH keys
- Install OpenSSH Server to Windows Server
- Add public SSH key to Windows Server
- Install GitBash (comes with Git)
- Set GitBash as default option for OpenSSH Server (to make scp work right)
- Create folder with your site name under `C:\inetpub\wwwroot\`
- Upload `update.ps1` script to created folder and adjust script
- Copy and adjust workflows
