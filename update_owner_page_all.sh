#!/bin/bash
ls data | xargs -I {} ./update_owner_page.sh {}
