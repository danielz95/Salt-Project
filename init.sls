# Windows.sls

chrome:
  pkg.installed

C:/Windows/PolicyDefenitions/en-US/chrome.adml:
  file.managed:
    - source: salt://chrome/chrome.adml

C:/Windows/PolicyDefenitions/en-US/google.adml:
  file.managed:
    - source: salt://chrome/google.adml

C:/Windows/PolicyDefenitions/chrome.admx:
  file.managed:
    - source: salt://chrome/chrome.admx

C:/Windows/PolicyDefenitions/google.admx:
  file.managed:
    - source: salt://chrome/google.admx


# Linux .sls 

chrome_linux:
  pkg.installed:
    - sources:
      - google-chrome-stable: salt://chrome/google-chrome-stable_current_amd64.deb 
    - mode: 755

/etc/opt/chrome/policies/managed/managed_policies.json:
  file.managed:
  - source: salt://chrome/managed_policies.json
  - makedirs: true
  - mode: 755
