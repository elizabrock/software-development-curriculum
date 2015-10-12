# SQL Server Setup

## Download

1. Visit http://www.microsoft.com/en-us/download/details.aspx?id=42299
2. Click 'Download'
3. Choose 'ExpressAndTools 64BIT\SQLEXPRWT_x64_ENU.exe'
4. Click 'Next'
5. The download will begin.
6. Click 'Run' to run the installer.

## Installer

1. Click 'Yes' if asked whether to allow the installer to make changes
1. Click 'Ok' to extract files
2. Wait while things extract
3. Click "New Sql Server stand-alone installation"
4. Check 'I accept'
5. Click 'Next'
6. The installer will run some checks.  If one of them fails, click on the failure for details on how to correct the issue and correct the issue. Afterwards, restart the installation and return to step 1.
7. Check "Use Microsoft Update to check for updates"
8. Click "Next"
7. Click 'Next'
9. Another set of checks. Wait, wait some more
10. The installer will run some checks.  If one of them fails, click on the failure for details on how to correct the issue and correct the issue.  If you need to install .Net Framework 3.5 SP 1, you can use [this link](http://www.microsoft.com/en-us/download/confirmation.aspx?id=22). Afterwards, tell it to rerun the checks.
11. Click "Next"
12. "Please Wait" while more checks are run
13. Click "Next"
14. Click 'Next'
15. Do some more waiting.
16. Click "Close"
17. Restart your computer

## Verify Installation

1. Open Microsoft SQL Server Management Studio
2. The "Connect to Server" window will open
3. Choose "Browse for More" from "Server Name"
4. On the Local Servers tab, expand "Database Engine"
5. Select "YOURUSERNAME/SQLEXPRESS"
6. Click "Ok"
7. Click "Connect"
8. If you see "YOURUSERNAME/SQLEXPRESS" in the "Object Explorer" sidebar, you have won.
