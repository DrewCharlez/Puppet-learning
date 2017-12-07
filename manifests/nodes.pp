node 'webserver1' { 
 nginx::website { 'adorable-animals':   
 site_domain => 'adorable-animals.com',  
 }
 
 nginx::website { 'adorable-animals-staging':
 site_domain => 'staging.adorable-animals.com',
 }

 nginx::website { 'amusing-animals':
 site_domain => 'funny.adorable-animals.com',
 }
}
