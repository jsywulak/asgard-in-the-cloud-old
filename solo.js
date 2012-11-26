{
 "asgard_config": {
	"password": "insertpasswordhere"

},

  "run_list": [ "recipe[tomcat6]",
                "recipe[sudoers]",
                "recipe[asgard]"
               ]
}

