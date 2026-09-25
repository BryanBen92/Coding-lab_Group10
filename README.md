# Coding-lab_Group10

## Project Overview
As the DevOps team for Kenyatta National Hospital (KNH), this project secures and manages
data from 12 critical sensors (Heart Rate, Temperature, and Water Usage) using shell
scripting. It includes a permission-governed environment, an analytical dashboard, and
an archiving system for sensor logs.

## Group Roles

| Member    | Role                          | Responsibility                                                        |
|-----------|-------------------------------|-------------------------------------------------------------------------|
| Shekinah  | The Architect                 | `initialize_system()` — creates active_logs, archived_logs, reports    |
| Calvin    | The Security Lead             | `secure_data()` — restricts active_logs to owner-only read/write        |
| Bryan     | The Orchestrator               | Execution logic, branch integration, .gitignore, README                |
| Fadhiri   | Clinical Analyst              | `process_vitals()` — extracts CRITICAL alerts into a report            |
| Gloria    | Facility Auditor & Archivist   | `water_audit()` and `hospital_archive.sh` — usage reporting and log rotation |

## Files

- `hospital_system.py` — provided data simulation engine
- `hospital_admin.sh` — environment setup and permission securing (Shekinah, Calvin, Bryan)
- `hospital_analysis.sh` — critical alert detection and water usage analysis (Fadhiri, Gloria)
- `hospital_archive.sh` — log rotation and archiving (Gloria)
- `.gitignore` — excludes patient data and logs from version control
- `README.md` — this file

## Setup & Usage

1. Start the data engine:
python3 hospital_system.py start

2. Set up and secure the environment:
bash hospital_admin.sh

3. Run analysis (critical alerts + water audit):
bash hospital_analysis.sh

4. Archive current logs:
bash hospital_archive.sh

5. Stop the data engine:
python3 hospital_system.py stop

## Notes

- `active_logs/`, `archived_logs/`, and `reports/` are excluded from GitHub per KNH data
  privacy policy. These directories are generated locally when the scripts are run.
- Each member worked on a separate feature branch and merged into `Shekinah` (default branch).
