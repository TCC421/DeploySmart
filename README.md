# $$\textsf{\color{white}Deploy\textsf{\color{#0fda00}Smart}}$$

DeploySmart is an application to ease sysadmin setup of new/reinstall computers by utilizing autounattend.xml and PowerShell to install applications from a .json list.

The goal of this project is to make things easier and faster for anyone setting up new computers or re-installing Windows often, may or may not need complex software automatically installed from scratch or even need to install/deploy for multiple companies or inhouse departments with different needs.

If you decide to run this, please do so on a localhost for now as there might be breaking changes as well as security issues involved, this is one of my first projects this big too.

## Prerequisites:

1. PHP 8.2+
2. Mysql 8+
3. Apache2/Nginx
4. Windows 10/11 to run the autounattend.xml and the installer scripts.

## How to use this:

1. Configure everything in db.php
2. Import your database in MySQL
3. Create a company (or use the default account). 
4. Generate autounattend.xml (this *SHOULD* include your DeploySmart url and ID) If it doesn't i have most likely done something wrong.
5. Go to "Configure Apps" you have a predefined list of applications that im sending with DeploySmart, but you can add your own directly under "Custom Scripts" easy as "Add" and "Save". 
6. Now you could run "irm https://deploysmart.yourdomain.com/deploy.php?ID={DS_YourDeploySmartID}" and that should show you the application list you just saved. 
7. Now Create a USB drive with any standard Windows 10/11 iso and put your autounattend.xml on that USB and re/install a machine.
8. Enjoy!

## Default login:

admin@example.com

Admin123456!

Don't forget to change password and enable TOTP/MFA from Profile Settings.

## Adding .ps1 scripts to the "🌐 Global" tab
All .ps1 scripts put in the /deployment/scripts/apps/ folder will automatically get added if cron is correctly setup against cron.php.

If you find something that needs to be fixed, im sorry, im just one person trying my best.

## What's next?

1. Installer script to make it easier to set up.
2. Internal guide to make the learning curve fast and easy.
3. UI/UX changes to have abetter over all style and feel (Mobile variant).
4. More automated applications.

## Issues?

Please use the issue tracker here. No guidelines for now, all information is good information.

## Updates:

There is about to come an update, a huge visual one at that, but also a well needed facelift.

This update will have to be partially manual (unless I figure something out in the next couple of days.

The update includes a few updates to the DB as password reset was done by an admin in the past, this should allow users to update their passwords by them selves using an email (if that is set up).

UI have been made mainly with DaisyUI and TailWind CSS along with icons from Don't awesome utilizing external sources. (I'll use embedded once I can compile them successfully).

I'll also be making an update system (where you could basically unpack your files and the system should notify you in the admin panel).

This update hav been partially done by AI (Copilot), and I have done code review for every single line of code to provide the safety and resolve as many bugs as possible added by Copilot in VS Code. 

Feel free to let me know how you feel about that.

### Donate

As im currently have some issues with funding my self and this project i would gladly take a donation to keep this project running with both networking and rent (Currenly unemployed). 
If you can, please donate here: https://www.paypal.com/donate/?hosted_button_id=3AHV7NHQWMJSC

Or hire me in Katrineholm Sweden or on distance for your project. mattish.91 at gmail.com =)

Sorry i have to make this edit, im only human and have to live in some way possible.
