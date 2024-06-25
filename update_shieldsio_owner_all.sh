#!/bin/bash
ls data | xargs -I {} ./update_shieldsio_owner.sh {}

