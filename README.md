# College Project just... don't bother reading

## Overview
The One-Click Malware Analyzer is a straightforward, user-friendly, comprehensive tool designed to provide real-time malware detection. It allows users to upload any file type up to 30MB, which is then scanned in real-time using API calls to the VirusTotal API.

## Problem Description
As of 2023, there are an estimated 800,000 cyberattacks per year, with 300,000 new malware instances being generated daily. This highlights the dire need for effective malware analysis tools to detect malicious files. The One-Click Malware Analyzer addresses this need by providing a user-friendly and efficient malware analysis tool. It provides a solution that allows users to easily upload and scan files, with the added functionality of tracking scan history.
Project Description
The One-Click Malware Analyzer is a comprehensive tool designed to provide real-time malware analysis. It is a single-user project that leverages the power of 72 security vendors through the VirusTotal API to scan uploaded files, providing users with detailed and reliable results. 

The webapp allows users to upload any file type up to 30MB, catering to a wide range of potential malware carriers. The real-time scanning feature is a critical component, as it enables immediate detection and analysis of potential threats.



One of the key features of the One-Click Malware Analyzer is its ability to track the history of scans made. This allows users to rescan and review the report of a file, providing a comprehensive overview of their scanning history and enabling them to monitor any recurring threats.

The webapp also includes an admin dashboard, which is the main authority for adding, deleting, and modifying users if required. The admin can also delete uploaded files and delete scan history, ensuring efficient file and user management. The webapp has been planned to have a distributed architecture, with centralized storage of the database. The application for the storage of the data has been planned using MySQL. All the user interfaces have been designed using Java, Servlet, and JSP.

## Features of the Project
The project offers several features including:

- File upload feature for any file type up to 30MB
- Real-time scanning using 72 security vendors
- Easy to understand analysis​
- Scan history tracking
- Rescan and report review functionality
- Admin dashboard for user and file management

## Advantages of the Project
The One-Click Malware Analyzer offers several advantages:

- User-friendly interface
- Real-time malware analysis
- Comprehensive scan results
- Scan history tracking
- Efficient file and user management
## Limitations
While the One-Click Malware Analyzer offers numerous benefits, it also has some limitations. 
- File upload size is limited to 30MB.

## Note
The source code in this repository is **not** final and it won't ever be. The final source code is submitted and I don't have a copy of it backed up anywhere or pushed to Github. I would have wanted to do everything in-house but oh well, Dengue had other plans. Due to health and some other complications I was running short on time and had to settle for API scanning instead of going for a fully-inhouse analysis engine.
- Dependent on external API.
## Future Scope
- In-house static and dynamic analysis engine.
- Increase file upload size limit to 700MB.
