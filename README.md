# TYPO3 CMS Demo Website

Demo website with configured sitepackage:

* 5 pages - layout, partial, templates
* 1 custom content element
* Navigation via v:menu
* Configured `gulp` with `tailwindcss`

**DB Dump**

Import from file `./db.sql`

**Backend Admin User**

* User: `admin`
* Password: `password`

**How to use gulp:**

for development run command:
```
cd packages/demo_sitepackage/Resources/Private/Assets/Theme
gulp
```

to make a build for production:
```
cd packages/demo_sitepackage/Resources/Private/Assets/Theme
gulp publish
```