#!/bin/bash

dfx deploy --network ic token \
	--argument="( record {
        name = \"STACK\";
        symbol = \"STACK\";
        decimals = 6;
        fee = 10000;
        logo = \"data:image/jpeg;base64,$(base64 icon.png)\";
        max_supply = 1000000000;                         
        initial_balances = vec {                                
            record {                                            
                record {                                        
                    owner = principal \"ztnja-xboxi-z2anp-myycr-lrugh-rqk4s-qykd7-h7b2a-a2nvt-6eyjw-7ae\";   
                    subaccount = null;                          
                };                                              
                1000000000                                 
            }                                                   
        };                                                      
        min_burn_amount = 10000;                         
        minting_account = null;                                 
        advanced_settings = null;  
    })"
