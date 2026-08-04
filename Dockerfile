FROM stayallive/php:8.3
 
# The base image ships Node 20 installed via `n`; downgrade it to v15.
# 16.20.2 is the final v16 release.
RUN n 16.20.2 \
    && n prune \
    && node --version \
    && npm --version
