#!/bin/bash

####### 
# Aliases for kubectl;
# !!!No alias for 'kubectl delete';
# Add this script to ~/.bashrc for auto-run;
# If an alias is to long (more than 5 or 6 letters, you're not encouraged use it, 
# they are here just for completion.
# Author: zhaoyafei0210@gmail.com
#######

## CONTENTS:
# aliases for 'kubectl <cmd>'
# aliases for 'kubectl cluster-info' -> kbcl<*>
# aliases for 'kubectl exec' -> kbe<*>
# aliases for 'kubectl attach'  -> kba<*>
# aliases for 'kubectl logs' -> kbl<*>
# aliases for 'kubectl create' -> kbc<*>
# aliases for 'kubectl run' -> kbr<*>
# aliases for 'kubectl get' -> kbg<*>
# aliases for 'kubectl get <*> | grep ' -> kb<*>g
# aliases for 'kubectl describe' -> kbd<*>
##

alias kb='kubectl'

#######
# aliases for 'kubectl delete'
alias kbdel='kubectl delete'
alias kdel='kubectl delete'
alias kbrm='kubectl delete'

#######
# aliases for 'kubectl <cmd>'
# -> kb<cmd>
alias kbcfg='kubectl config'
alias kbconfig='kubectl config'

alias kblogs='kubectl logs' # refer to # aliases for 'kubectl logs'

alias kbexp='kubectl expose'

alias kbget='kubectl get' # refer to # aliases for 'kubectl get'
alias kbset='kubectl set'
alias kbrun='kubectl run' # refer to # aliases for 'kubectl run'
alias kbcp='kubectl cp'
alias kbexec='kubectl exec' # refer to # aliases for 'kubectl exec'

alias kbscale='kubectl scale'

alias kblab='kubectl label'
alias kblabel='kubectl label'
alias kbann='kubectl annotation'
alias kbanno='kubectl annotation'

# These aliases are to long (more than 5 or 6 letters, you're not encouraged use them, 
# they are here just for completion.
alias kbcreate='kubectl create' # refer to # aliases for 'kubectl create'
alias kbattach='kubectl attach' # refer to # aliases for 'kubectl attach'

alias kbdescribe='kubectl describe' # refer to # aliases for 'kubectl describe'

alias kbproxy='kubectl proxy'
alias kbexpose='kubectl expose'

alias kbexplain='kubectl explain'

#######
# aliases for 'kubectl cluster-info'
# -> kbcl<*>
alias kbcls='kubectl cluster-info'
alias kbclst='kubectl cluster-info'
alias kbcli='kubectl cluster-info'
alias kbci='kubectl cluster-info'
alias kbinfo='kubectl cluster-info'

#######
# aliases for 'kubectl exec'
# -> kbe<*>
alias kbe='kubectl exec'
alias kbx='kubectl exec'
alias kbex='kubectl exec'
alias kbexe='kubectl exec'

alias kbeit='kubectl exec -it'
alias kbxit='kubectl exec -it'
alias kbexit='kubectl exec -it'

#######
# aliases for 'kubectl attach'
# -> kba<*>
alias kba='kubectl attach'
alias kbat='kubectl attach'
alias kbatt='kubectl attach'

alias kbai='kubectl attach -it'
alias kbait='kubectl attach -it'
alias kbati='kubectl attach -it'

#######
# aliases for 'kubectl logs'
# -> kbl<*>
alias kbl='kubectl logs'
alias kblog='kubectl logs'
# kubectl logs
# -> kblg[r]
alias kblg='kubectl logs | grep'
alias kblgr='kubectl logs | grep'

#######
# aliases for 'kubectl create'
# -> kbc<*>
alias kbc='kubectl create'
alias kbcr='kubectl create'
alias kbcrt='kubectl create'
alias kbcf='kubectl create -f'
alias kbcrf='kubectl create -f'
alias kbcrtf='kubectl create -f'

#######
# aliases for 'kubectl run'
# -> kbr<*>
alias kbr='kubectl run'
#alias kbrun='kubectl run'
alias kbrit='kubectl run -it'
alias kbrunit='kubectl run -it'

#######
# aliases for 'kubectl get
# -> kbg<*>
alias kbg='kubectl get'

alias kbgpo='kubectl get pods'
alias kbgpod='kubectl get pods'
alias kbgpv='kubectl get pv'
alias kbgvc='kubectl get pvc'
alias kbgpvc='kubectl get pvc'

alias kbgdp='kubectl get deployment'
alias kbgdpl='kubectl get deployment'
alias kbgsv='kubectl get service'
alias kbgsvc='kubectl get service'

#######
# aliases for 'kubectl get
# -> kb<*>
alias kbps='kubectl get pods'
alias kbpo='kubectl get pods'
alias kbpod='kubectl get pods'
alias kbpv='kubectl get pv'
alias kbvc='kubectl get pvc'
alias kbpvc='kubectl get pvc'

alias kbdp='kubectl get deployment'
alias kbdpl='kubectl get deployment'
alias kbsv='kubectl get service'
alias kbsvc='kubectl get service'

#######
# aliases for 'kubectl get <*> | grep '
# -> kb<*>g
alias kbpsg='kubectl get pods | grep'
alias kbpog='kubectl get pods | grep'
alias kbpdg='kubectl get pods | grep'
alias kbvcg='kubectl get pvc | grep'
alias kbpvg='kubectl get pv | grep'

alias kbdpg='kubectl get deployment | grep'
alias kbdplg='kubectl get deployment | grep'
alias kbsvg='kubectl get service | grep'
alias kbsvcg='kubectl get service | grep'

#######
# aliases for 'kubectl describe'
# -> kbd<*>
alias kbd='kubectl describe'
alias kbdes='kubectl describe'
alias kbdesc='kubectl describe'
alias kbdscr='kubectl describe'

alias kbdpo='kubectl describe pods'
alias kbdpod='kubectl describe pods'
alias kbdpv='kubectl describe pv'
alias kbdvc='kubectl describe pvc'
alias kbdpvc='kubectl describe pvc'

alias kbddp='kubectl describe deployment'
alias kbddpl='kubectl describe deployment'
alias kbdsv='kubectl describe service'
alias kbdsvc='kubectl describe service'

#######

### more compact alias, use 'k' for 'kubectl
## CONTENTS:
# aliases for 'kubectl <cmd>'
# aliases for 'kubectl cluster-info' -> kcl<*>
# aliases for 'kubectl exec' -> ke<*>
# aliases for 'kubectl attach'  -> ka<*>
# aliases for 'kubectl logs' -> kl<*>
# aliases for 'kubectl create' -> kc<*>
# aliases for 'kubectl run' -> kr<*>
# aliases for 'kubectl get' -> kg<*>
# aliases for 'kubectl get <*> | grep ' -> k<*>g
# aliases for 'kubectl describe' -> kd<*>
##

#######
# aliases for 'kubectl <cmd>'
# -> k<cmd>
alias kcfg='kubectl config'
alias kconfig='kubectl config'

alias klogs='kubectl logs' # refer to # aliases for 'kubectl logs'

alias kexp='kubectl expose'

alias kget='kubectl get' # refer to # aliases for 'kubectl get'
alias kset='kubectl set'
alias krun='kubectl run' # refer to # aliases for 'kubectl run'
alias kcp='kubectl cp'
alias kexec='kubectl exec' # refer to # aliases for 'kubectl exec'

alias kscale='kubectl scale'

alias klab='kubectl label'
alias klabel='kubectl label'
alias kann='kubectl annotation'
alias kanno='kubectl annotation'

# These aliases are to long (more than 5 or 6 letters, you're not encouraged use them, 
# they are here just for completion.
alias kcreate='kubectl create' # refer to # aliases for 'kubectl create'
alias kattach='kubectl attach' # refer to # aliases for 'kubectl attach'

alias kdescribe='kubectl describe' # refer to # aliases for 'kubectl describe'

alias kproxy='kubectl proxy'
alias kexpose='kubectl expose'

alias kexplain='kubectl explain'

#######
# aliases for 'kubectl cluster-info'
# -> kcl<*>
alias kcls='kubectl cluster-info'
alias kclst='kubectl cluster-info'
alias kcli='kubectl cluster-info'
alias kci='kubectl cluster-info'
alias kinfo='kubectl cluster-info'

#######
# aliases for 'kubectl exec'
# -> ke<*>
alias ke='kubectl exec'
alias kx='kubectl exec'
alias kex='kubectl exec'
alias kexe='kubectl exec'

alias keit='kubectl exec -it'
alias kxit='kubectl exec -it'
alias kexit='kubectl exec -it'

#######
# aliases for 'kubectl attach'
# -> ka<*>
alias ka='kubectl attach'
alias kat='kubectl attach'
alias katt='kubectl attach'

alias kai='kubectl attach -it'
alias kait='kubectl attach -it'
alias kati='kubectl attach -it'

#######
# aliases for 'kubectl logs'
# -> kl<*>
alias kl='kubectl logs'
alias klog='kubectl logs'
# kubectl logs
# -> klg[r]
alias klg='kubectl logs | grep'
alias klgr='kubectl logs | grep'

#######
# aliases for 'kubectl create'
# -> kc<*>
alias kc='kubectl create'
alias kcr='kubectl create'
alias kcrt='kubectl create'
alias kcf='kubectl create -f'
alias kcrf='kubectl create -f'
alias kcrtf='kubectl create -f'

#######
# aliases for 'kubectl run'
# -> kr<*>
alias kr='kubectl run'
#alias krun='kubectl run'
alias krit='kubectl run -it'
alias krunit='kubectl run -it'

#######
# aliases for 'kubectl get
# -> kg<*>
alias kg='kubectl get'

alias kgpo='kubectl get pods'
alias kgpod='kubectl get pods'
alias kgpv='kubectl get pv'
alias kgvc='kubectl get pvc'
alias kgpvc='kubectl get pvc'

alias kgdp='kubectl get deployment'
alias kgdpl='kubectl get deployment'
alias kgsv='kubectl get service'
alias kgsvc='kubectl get service'

#######
# aliases for 'kubectl get
# -> k<*>
alias kps='kubectl get pods'
alias kpo='kubectl get pods'
alias kpod='kubectl get pods'
alias kpv='kubectl get pv'
alias kvc='kubectl get pvc'
alias kpvc='kubectl get pvc'

alias kdp='kubectl get deployment'
alias kdpl='kubectl get deployment'
alias ksv='kubectl get service'
alias ksvc='kubectl get service'

#######
# aliases for 'kubectl get <*> | grep '
# -> k<*>g
alias kpsg='kubectl get pods | grep'
alias kpog='kubectl get pods | grep'
alias kpdg='kubectl get pods | grep'
alias kvcg='kubectl get pvc | grep'
alias kpvg='kubectl get pv | grep'

alias kdpg='kubectl get deployment | grep'
alias kdplg='kubectl get deployment | grep'
alias ksvg='kubectl get service | grep'
alias ksvcg='kubectl get service | grep'

#######
# aliases for 'kubectl describe'
# -> kd<*>
alias kd='kubectl describe'
alias kdes='kubectl describe'
alias kdesc='kubectl describe'
alias kdscr='kubectl describe'

alias kdpo='kubectl describe pods'
alias kdpod='kubectl describe pods'
alias kdpv='kubectl describe pv'
alias kdvc='kubectl describe pvc'
alias kdpvc='kubectl describe pvc'

alias kddp='kubectl describe deployment'
alias kddpl='kubectl describe deployment'
alias kdsv='kubectl describe service'
alias kdsvc='kubectl describe service'

#######
