#This allows the role to be able to renew the cert and tokens associated

path "pki_int/issue/*" {

    capabilities = ["create", "update"]

}

path "pki_int/certs" {

    capabilities = ["list"]

}

path "pki_int/revoke" {

    capabilities = ["create", "update"]

}

path "pki_int/tidy" {

capabilities = ["create", "update"]

}
    
path "pki/cert/ca" {

capabilities = ["read"]

}

path "auth/token/renew" {

    capabilities = ["update"]

}
    
path "auth/token/renew-self" {
    
    capabilities = ["update"]

}

# Roles to create, update secrets 

path "/sys/mounts" {
    capabilities = ["read", "update", "list"]
    }

path "/sys/mounts/*" {
    
    capabilities = ["update", "create"]

}

path "sys/policies/acl" {

    capabilities = ["read"]

}
    
path "secret/*" {

    capabilities = ["read", "create", "update", "delete"]

}

#This allows it to view secrets {{path}} will need to be updated

#v1 kv pair path

path "{{path}}/*" {

  capabilities = ["read", "list"]

}

#v2 kv pair path

path "{{path}}/+/*" {

  capabilities = ["read", "list"]

}