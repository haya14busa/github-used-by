#!/bin/bash
find data | grep data.json | xargs -I {} ./update_repo_templates.sh {}
