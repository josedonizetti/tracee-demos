cmd_/home/josedonizetti/code/sessionsk8s-tracee/diamorphine/Diamorphine/Module.symvers := sed 's/\.ko$$/\.o/' /home/josedonizetti/code/sessionsk8s-tracee/diamorphine/Diamorphine/modules.order | scripts/mod/modpost -m -a  -o /home/josedonizetti/code/sessionsk8s-tracee/diamorphine/Diamorphine/Module.symvers -e -i Module.symvers   -T -