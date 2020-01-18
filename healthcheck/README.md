# healthcheck

Simple HTTP based healthcheck.

## Inputs

### `url`

**Required** URL to connect to

### `username`
       
**Optional** Username for basic auth

### `password`

**Optional** Password for basic auth
        
## Example usage

    - uses: mindhaq/actions/healthcheck@master
      with:
        url: 'https://example.com'
        username: health
        password: ch3ck4
