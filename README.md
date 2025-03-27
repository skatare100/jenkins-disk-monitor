# Jenkins Disk Space Monitor

## Overview
This project is a Jenkins pipeline that monitors disk space and generates an HTML report with charts. It automates disk space checks and archives reports for easy access.

## Features
- **Disk Space Check**: Runs a PowerShell script to check available disk space.
- **HTML Report Generation**: Outputs a formatted report with disk usage details.
- **Chart Visualization**: Includes visual charts for better representation.
- **Artifact Archiving**: Saves reports within Jenkins for later review.

## Prerequisites
- Jenkins installed and configured on Windows.
- Git installed and initialized in the workspace.
- PowerShell enabled on the system.

## Setup Instructions
1. Clone this repository:
   ```sh
   git clone https://github.com/skatare100/jenkins-disk-monitor.git
   ```
2. Open Jenkins and create a new pipeline job.
3. Configure the pipeline to use the provided `Jenkinsfile`.
4. Run the pipeline to generate disk space reports.

## Usage
- The pipeline runs a disk space check and saves reports in `disk_space_report.html`.
- Reports are archived in Jenkins and can be accessed from the build history.
- Future enhancements may include email notifications and log retention.

## Contributing
Feel free to submit issues or pull requests to improve the project!

## Author
Sourav Katare
