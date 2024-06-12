<!DOCTYPE html>
<html>
<head>
<title>Relative Hz</title>
<meta name="description" content="after hearing the tone of each ball place them in the correct order">
<meta name="keywords" content="balls,game,physics,music,fun,learn,webgl">
<link rel="icon" type="image/jpg" href="12">
<script>
var aa="function"==typeof Object.defineProperties?Object.defineProperty:function(a,c,e){a!=Array.prototype&&a!=Object.prototype&&(a[c]=e.value)},ba="undefined"!=typeof window&&window===this?this:"undefined"!=typeof global&&null!=global?global:this;function ca(a){if(a){for(var c=ba,e=["Math","log2"],f=0;f<e.length-2;f++){var g=e[f];g in c||(c[g]={});c=c[g]}e=e[e.length-1];f=c[e];a=a(f);a!=f&&null!=a&&aa(c,e,{configurable:!0,writable:!0,value:a})}}
ca(function(a){return a?a:function(a){return Math.log(a)/Math.LN2}});function da(a,c,e){e[0]=a[0]-c[0];e[1]=a[1]-c[1]}function ea(a,c){a[0]*=c;a[1]*=c}function fa(a){var c=Math.sqrt(a[0]*a[0]+a[1]*a[1]);0==c&&(c=Number.POSITIVE_INFINITY);a[0]/=c;a[1]/=c}
var ha=1E3/120,b=0,h=new Float32Array(64),la=new Float32Array(64),k=new Float32Array(64),l=new Float32Array(32),p=new Uint8Array(32),ma=new Float32Array(32),q=Array(6),na=new Float32Array(12),oa=performance.now(),pa=performance.now(),va=1,wa=1,xa=.5,ya=.5,r=new Int8Array(64),Ja=new Uint8Array(2),Ka=new Uint8Array(2),t=new Float32Array(4),La=new Float32Array(4),w=0,Ma=0,Pa=0,Qa=.5,Ra=.5,fb=!0,gb=1,y=0,z,hb=new Float32Array(32),A=new Float32Array(32),ib=0,jb=new Uint8Array(2),kb=0,lb=1,mb=1,Bb=1,Cb=
!0;function Db(){for(var a=0;6>a;++a)if(-1==q[a]){var c=2*a;c=[na[c],na[c+1]];for(var e=1E4,f=-2,g=0;g<b;++g){var n=2*g,u=[h[n],h[n+1]];n=c[0]-u[0];u=c[1]-u[1];n=Math.sqrt(n*n+u*u);1>n&&n<e&&(e=n,f=g,ya=1.2)}q[a]=f}}
function Eb(a,c,e,f){f&&(q[a]=-1);a*=2;na[a]=Fb/G*F*(c/Fb*2-1);na[a+1]=F*(e/G*-2+1);if(f&&Cb){Cb=!1;H=new (window.AudioContext||window.webkitAudioContext);L=H.sampleRate;Gb=2*Math.PI/L;var g=Math.pow(1/M,1/(.1*L));c=Math.pow(M,1/(2*L));var n=Math.floor(2.1*L),u=Math.floor(.1*L),Na=260*Gb;Hb=H.createBuffer(Ib,n,L);for(e=0;e<Ib;++e){f=Hb.getChannelData(e);a=M;for(var Oa=g,Q=0,C=0;C<n;++C)f[C]=Math.sin(C*Na+1.4*Q)*a,Q=f[C],a*=Oa,C==u&&(Oa=c)}c=Math.pow(M,1/L);g=Math.floor(L);n=H.createBuffer(Jb,g,L);
for(e=0;e<Jb;++e)for(f=n.getChannelData(e),a=1,C=Q=0;C<g;++C)Q=Q+.5*(2*Math.random()-1)+Math.max(-1-(Q-.5),0)-Math.max(Q+.5-1,0),f[C]=Q*a*.6,a*=c;Kb=H.createConvolver();Kb.buffer=n;Kb.connect(H.destination);Lb=y=kb=1;c=H.createGain();c.gain.value=0;e=H.createBufferSource();e.buffer=Hb;e.playbackRate.value=1E4;e.connect(c);c.connect(H.destination);e.start()}}function Mb(a){q[a]=-2;for(a=0;6>a&&-2==q[a];++a);6==a&&(ya=.5)}var Nb=1/1024;
function Ob(a){return-Math.max(Math.abs(a[0])-va,Math.abs(a[1])-wa)}var H,L=44100,Gb=2*Math.PI/L,Ib=1,Jb=2,N=0,hc=Array(32),ic=new Uint8Array(32),Kb,O=0,P=0,M=.001,Hb,Lb=0,jc=[1,.84,.6674,.5];function kc(a){var c=H.createBufferSource();c.buffer=hc[a];c.connect(Kb);c.start()}var R,S=null,T=Array(4),lc,mc,nc,oc,pc,qc,rc,sc,tc,uc,vc=Array(4),wc=Array(4);vc[0]="precision mediump float;uniform vec2 pJ;attribute vec4 vD;varying vec2 v;varying float t;void main(){vec2 s = vec2(0.,-1.);if(vD.z==.25){s.y=2.;}if(vD.z==.5){s.x=1.732;}if(vD.z==.75){s.x=-1.732;}v = s;t = vD.w;gl_Position = vec4((s+vD.xy)*pJ,1.,1.);}";
wc[0]="precision mediump float;varying vec2 v;varying float t;void main(){float l = dot(v,v);if(l>1.){discard;}float f = floor(t);float r = fract(t);vec3 c = vec3(1.);if(f==0.){c = vec3(.5,1.,.6)+l;}if(f==1.){c = vec3(1.,0.,0.);}if(f==2.){c = vec3(.5,1.,.7);}gl_FragColor = vec4(mix(vec3(1.),c,r),1.-1./(max(1.-dot(v,v),0.)*16.));}";vc[1]="precision mediump float;uniform vec4 dP;uniform vec2 pJ;attribute vec2 vD;varying vec2 v;varying float a;void main(){v = vD;gl_Position = vec4((vD*dP.zw+dP.xy)*pJ,1.,1.);}";
wc[1]="precision mediump float;varying vec2 v;void main(){vec2 u = .1/(1.-abs(v));gl_FragColor = vec4(.7,.8,.9,1.-dot(u,u));}";wc[2]="precision mediump float;varying vec2 v;void main(){float d = 1./(max((1.15-dot(v,v))*4.,0.));gl_FragColor = vec4(1.,1.,1.,(1.6-d)*d-d-d);}";vc[3]="precision mediump float;uniform vec4 aN;uniform vec2 pJ;attribute vec2 vD;varying vec2 v;varying vec2 h;void main(){h = vD;v = vD/pJ+vec2(0.,aN.x);gl_Position = vec4(vD,0.,1.);}";wc[3]="precision mediump float;uniform vec4 aN;uniform float cC;varying vec2 v;varying vec2 h;void main(){vec2 m = mix(vec2(5.5,-.7),vec2(0.,0.),aN.z);vec2 u = v*mix(1./20.,.5,aN.y);vec2 r = abs(fract(u)*2.-1.)*(m.x)/m.y+cos(mix(u.x,length(u),aN.w)*2.)*8.;r = 1./(abs(fract(r*.1)*2.-1.)*16.+1.);gl_FragColor = vec4(.6+.2*cos(6.28318*(vec3(-2.792,-2.332,-1.822)*(cC-dot(r,r)*.5)/vec3(-0.588,-2.812,-6.003))),1.);}";
function xc(a,c,e){a=a?S.createShader(S.VERTEX_SHADER):S.createShader(S.FRAGMENT_SHADER);S.shaderSource(a,c);S.compileShader(a);S.getShaderParameter(a,S.COMPILE_STATUS)||alert(S.getShaderInfoLog(a));S.attachShader(T[e],a)}var yc=Array(2),U=new Float32Array(384),zc=new Float32Array([-1,1,1,-1,-1,-1,-1,1,1,1,1,-1]);function Ac(a,c,e){yc[a]=S.createBuffer();S.bindBuffer(S.ARRAY_BUFFER,yc[a]);S.bufferData(S.ARRAY_BUFFER,c,e)}var F=10,V=new Float32Array(2),Fb=100,G=100;
function ed(){Fb=window.innerWidth;G=window.innerHeight;R.width=Fb;R.height=G;var a=1/F;V[0]=G/Fb*a;V[1]=a;S.viewport(0,0,Fb,G);S.useProgram(T[0]);S.uniform2fv(mc,V);S.useProgram(T[1]);S.uniform2fv(oc,V);S.useProgram(T[2]);S.uniform2fv(qc,V);S.useProgram(T[3]);S.uniform2fv(sc,V);va=Fb/G*F;wa=F;z.style.fontSize=Math.floor(.1*G)+"px"}var fd=new Float32Array(4),gd=new Float32Array(4);
function hd(){var a=performance.now(),c=a-pa;pa=a;18.5<c&&(oa=a,c=0);var e=c;if(0<O)if(0==P){var f=Math.floor(O*N);O-=.001*e/(.75*N);var g=Math.floor(O*N);if(0<O&&f!=g){var n=ic[N-f];kc(n);l[n]=.999}0>=O&&(z.innerHTML=w,z.style.textShadow="0px 0px 8px rgba(88, 226, 144, 0.5),0px 0px 20px rgba(255, 255, 255, 0.45)")}else if(1==P){if(1==O){r[0]=ic[0];Ja[0]=1;var u=ic[1];p[u]=1;l[u]=1.999;u*=2;k[u+0]=2;k[u+1]=2*(0>h[u+1])-1}O-=.001*e;0>=O&&(O=1,P=0)}else if(2==P)f=Math.floor(O*N),O-=.001*e/(.2*N),g=Math.floor(O*
N),0<O&&f!=g&&(n=N-f,kc(n),l[n]=2.999),0>=O&&(Pa=0,Ma=w,++w,y=gb=1);else if(3==P){if(1==O)for(var Na=0;Na<N;++Na)kc(Na);O-=.001*e;0>=O&&(Pa=0,Ma=w,w-=gb,0>w&&(w=0),++gb,y=1)}if(0<Lb){var Oa=jc.length,Q=Math.floor(Lb*Oa);Lb-=.001*c/.5;var C=Math.floor(Lb*Oa);if(0<Lb&&Q!=C){var nb=H.createBufferSource();nb.buffer=Hb;nb.playbackRate.value=jc[C];nb.connect(Kb);nb.start()}}for(var ld=c,m=0;m<b;++m){var qa=p[m];if(0!=qa&&1!=Math.floor(l[m])){--qa;var Pb=Ka[qa],Bc=2*qa,Qb=[t[Bc],t[Bc+1]],Cc=2*m,ra=[h[Cc],
h[Cc+1]];if(1==Pb&&1>Math.max(Math.abs(Qb[0]-ra[0])-xa,Math.abs(Qb[1]-ra[1])-10)){p[m]=0;var ob=Ja[qa],za=Math.floor((ra[1]-Qb[1]+10)/20*(ob+1));0>za&&(za=0);za>ob&&(za=ob);for(var Rb=32*qa,W=Rb+ob;W>Rb+za;--W)r[W]=r[W-1];r[Rb+za]=m;++Ja[qa];ib=1}}}if(0<ib&&(ib-=.002*ld,0>=ib)){for(m=0;2>m;++m)jb[m]=0;for(m=0;m<b;++m)0!=p[m]&&(jb[p[m]-1]=1);for(m=0;2>m;++m)if(Pb=Ka[m],1==Pb&&0==jb[m]){z.style.textShadow="0px 0px 8px rgba(88, 226, 144, 0),0px 0px 20px rgba(255, 255, 255, 0)";var Sa=Ja[m]-1,Aa=32*m;
for(W=0;W<Sa&&!(r[Aa]>r[Aa+1]);++W)++Aa;if(W==Sa)O=1,P=2,0==w&&0==Ma&&(Bb=.999);else if(0!=w){O=1;P=3;++Sa;Aa=32*m;for(var Dc=0;Dc<Sa;++Dc){ra=r[Aa];++Aa;l[ra]=1.999;p[ra]=1+m;var pb=2*ra;k[pb]+=2*(2*Math.random()-1);k[pb+1]+=2*(2*Math.random()-1)}Ja[m]=0}else W!=Sa&&0==w&&(P=O=1)}}var Ec=c;Ec*=.001;for(var qb=0;qb<b;++qb){var Fc=l[qb],Sb=Fc-Ec,Gc=Math.floor(Fc);Gc!=Math.floor(Sb)&&(Sb=Gc);l[qb]=Sb}var Tb=c;0!=Bb&&1!=Bb&&(Bb-=.004*Tb,0>Bb&&(Bb=0));0<kb&&(kb-=.001*Tb/1.5,0>kb&&(kb=0),mb=Math.max(2*
(kb-.5),0),lb=Math.min(2*kb,1));if(0<y){if(1==y){var Ub=w-Ma,Ba=2*F*Ub;La[1]=-2*Ba;for(var d=0;d<b;++d)la[2*d+1]-=2*Ba}y-=.001*Tb/1.5;if(fb){fb=!1;for(d=0;6>d;++d)q[d]=-2;for(d=0;2>d;++d)Ka[d]=0;for(d=0;64>d;++d)k[d]=0;for(d=0;32>d;++d)p[d]=0;for(d=0;32>d;++d)l[d]=0;var Ta=w%5+1,sa=Math.floor(w/5)+1;Ra=.5*sa;b=Ta+sa;Ka[0]=1;Ja[0]=Ta;for(var Ua=b,rb=.01,B=0;B<Ua;++B)hb[B]=Math.random();var Hc=1/(2*Ua);rb>Hc&&(rb=Hc);var ta=0;A[0]=ta;for(B=1;B<Ua;++B){var Vb=1-ta-rb*(Ua-B);.3<Vb&&(Vb=.3);ta+=rb+Vb*
hb[B];A[B]=ta}ta=(1-ta)*hb[0];for(B=0;B<Ua;++B)A[B]=128*Math.pow(2,(ta+A[B])*Math.log2(16));for(d=0;d<b;++d)ma[d]=A[d];for(var sb=b,D=0;D<sa;++D)hb[D]=Math.random();for(D=0;D<sb;++D)A[D]=D;for(D=0;D<sa;++D){for(var Ic=Math.floor(hb[D]*(sb-D)),md=A[Ic],tb=Ic;tb<sb-1;++tb)A[tb]=A[tb+1];A[sb-1]=md}for(d=0;d<b;++d)ic[d]=A[d];for(d=0;d<Ta;++d)r[d]=A[d];for(d=0;d<sa;++d)p[A[Ta+d]]=1;Ub=w-Ma;Ba=2*F*Ub;t[0]=0;t[1]=Ba;La[0]=0;for(d=La[1]=0;d<b;++d)h[2*d+1]=Ba;for(d=0;d<b;++d)la[2*d+1]=0;var Wb=-(sa-1);for(d=
0;d<sa;++d){var ub=2*A[Ta+d];h[ub]=3;h[ub+1]=Wb+Ba;la[ub]=3;la[ub+1]=Wb;Wb+=2}var Ca=b,Xb=Math.floor(w/5)%3;if(0==Xb){var Da=Math.pow(1/M,1/(.1*L)),Ea=Math.pow(M,1/(2*L)),ia=Math.floor(2.1*L),Va=Math.floor(.1*L);N=Ca;for(var x=0;x<Ca;++x){var Wa=.8*ma[x]*Gb;hc[x]=H.createBuffer(Ib,ia,L);for(var I=0;I<Ib;++I)for(var Fa=hc[x].getChannelData(I),Jc=M,Kc=Da,Lc=0,v=0;v<ia;++v)Fa[v]=Math.sin(v*Wa+1.4*Lc)*Jc,Lc=Fa[v],Jc*=Kc,v==Va&&(Kc=Ea)}}else if(1==Xb)for(Da=Math.pow(1/M,1/(.1*L)),Ea=Math.pow(M,1/(2*L)),
ia=Math.floor(2.1*L),Va=Math.floor(.1*L),N=Ca,x=0;x<Ca;++x)for(Wa=3.5*ma[x]*Gb,hc[x]=H.createBuffer(Ib,ia,L),I=0;I<Ib;++I){Fa=hc[x].getChannelData(I);var Xa=M,Ya=M,Za=Da,vb=Da,$a=0,Ga=0;for(v=0;v<ia;++v){var ab=v*Wa,Yb=Math.sin(.6*ab+1.1*Ga)*Xa,wb=Math.sin(ab+1.1*$a)*Ya*.5;$a=Fa[v]=Yb;Ga=wb;Xa*=Za;Ya*=vb;v==Va&&(Za=Ea,vb=0)}}else if(2==Xb){var nd=.25/Math.PI;Da=Math.pow(1/M,1/(.1*L));Ea=Math.pow(M,1/(2*L));ia=Math.floor(2.1*L);Va=Math.floor(.1*L);N=Ca;for(x=0;x<Ca;++x)for(Wa=ma[x]*Gb*.5,hc[x]=H.createBuffer(Ib,
ia,L),I=0;I<Ib;++I)for(Fa=hc[x].getChannelData(I),Xa=M,Ya=1,Za=Da,vb=Ea,v=Ga=$a=0;v<ia;++v){ab=v*Wa;Yb=Math.sin(ab+2*$a+2*Ga)*Xa;var Mc=ab+2*Ga;wb=Math.sin(Mc)*Ya;var Nc=Mc*nd;.5<Nc-Math.floor(Nc)&&(wb=0);$a=Fa[v]=Yb;Ga=wb;Xa*=Za;Ya*=vb;v==Va&&(Za=Ea)}}}0>=y&&(y=0,O=1,P=0)}for(;oa<a;){if(0<y){var Zb=w-Ma,od=Math.floor(2*Pa/Zb);Pa+=.03*(Zb-Pa);od!=Math.floor(2*Pa/Zb)&&w!=Ma&&(fb=!0);for(var X=0;2>X;++X)if(1==Ka[X]){var Y=2*X;t[Y+1]+=.03*(La[Y+1]-t[Y+1])}for(X=0;X<b;++X)0!=p[X]&&(Y=2*X,h[Y+1]+=.03*
(la[Y+1]-h[Y+1]))}for(var Z=0;6>Z;++Z)if(0<=q[Z]){var bb=2*Z,$b=[na[bb],na[bb+1]],E=2*q[Z],ac=[h[E],h[E+1]],Oc=[k[E],k[E+1]];ea(Oc,.16);var J=[0,0];da($b,ac,J);ea(J,.64);da(J,Oc,J);k[E]+=J[0];k[E+1]+=J[1]}for(Z=0;6>Z;++Z){var bc=q[Z];if(0<=bc){var cb=p[bc];if(0!=cb){var Pc=2*bc;$b=[h[Pc],h[Pc+1]];--cb;var pd=Ja[cb];bb=32*cb;if(1==Ka[cb])for(var Qc=0;Qc<pd;++Qc)E=2*r[bb],++bb,ac=[h[E],h[E+1]],J=[0,0],da(ac,$b,J),fa(J),ea(J,.48),k[E+1]+=J[1]}}}for(var qd=0>=y,cc=0;cc<b;++cc){var xb=[0,0],dc=1,ja=2*
cc,Rc=[h[ja],h[ja+1]],Sc=[k[ja],k[ja+1]],Tc=Ob(Rc);if(1>Tc&&qd){var ec=Rc.slice(),K=ec,yb=Ob,rd=yb([K[0]+Nb,K[1]])-yb([K[0]-Nb,K[1]]),sd=yb([K[0],K[1]+Nb])-yb([K[0],K[1]-Nb]);K[0]=rd;K[1]=sd;fa(K);ea(ec,32*(1-Tc));var Uc=xb,Vc=ec,Wc=xb;Wc[0]=Uc[0]+Vc[0];Wc[1]=Uc[1]+Vc[1];dc+=4}k[ja]+=.02*(xb[0]-Sc[0]*dc);k[ja+1]+=.02*(xb[1]-Sc[1]*dc)}for(var Ha=0;2>Ha;++Ha)if(1==Ka[Ha])for(var Xc=2*Ha,fc=[t[Xc],t[Xc+1]-10],Yc=Ja[Ha],td=20/(Yc+1),Zc=32*Ha,$c=0;$c<Yc;++$c){fc[1]+=td;var ka=2*r[Zc];++Zc;var ud=[h[ka],
h[ka+1]],ad=[k[ka],k[ka+1]];ea(ad,.16);var Ia=[0,0];da(fc,ud,Ia);ea(Ia,1.28);da(Ia,ad,Ia);k[ka]+=Ia[0];k[ka+1]+=Ia[1]}for(var db=0;64>db;++db)h[db]+=.04*k[db];xa+=.1*(ya-xa);Qa+=.05*(Ra-Qa);oa+=ha}if(0<kb){var gc=1/F,bd=G/Fb*gc,zb=lb;V[0]=bd*(1-zb)+.1*bd*zb;V[1]=gc*(1-zb)+.1*gc*zb;S.useProgram(T[0]);S.uniform2fv(mc,V);S.useProgram(T[1]);S.uniform2fv(oc,V)}S.bindBuffer(S.ARRAY_BUFFER,yc[1]);gd[0]=Pa*F*4;gd[1]=lb;gd[2]=mb;gd[3]=Bb;S.useProgram(T[3]);S.uniform4fv(tc,gd);S.uniform1f(uc,Qa);S.vertexAttribPointer(rc,
2,S.FLOAT,!1,0,0);S.enableVertexAttribArray(rc);S.drawArrays(S.TRIANGLES,0,6);for(var Ab=0;2>Ab;++Ab)if(1==Ka[Ab]){var cd=2*Ab;fd[0]=t[cd];fd[1]=t[cd+1];fd[2]=xa;fd[3]=10;S.useProgram(T[1]);S.uniform4fv(pc,fd);S.vertexAttribPointer(nc,2,S.FLOAT,!1,0,0);S.enableVertexAttribArray(nc);S.drawArrays(S.TRIANGLES,0,6)}for(var ua=0,eb=0;eb<b;++eb)for(var vd=h[2*eb],wd=h[2*eb+1],xd=l[eb],dd=0;3>dd;++dd)U[ua]=vd,++ua,U[ua]=wd,++ua,++ua,U[ua]=xd,++ua;S.bindBuffer(S.ARRAY_BUFFER,yc[0]);S.bufferSubData(S.ARRAY_BUFFER,
0,U);S.useProgram(T[0]);S.vertexAttribPointer(lc,4,S.FLOAT,!1,0,0);S.enableVertexAttribArray(lc);S.drawArrays(S.TRIANGLES,0,1+3*b);window.requestAnimationFrame(hd)}var id=Array(5);function jd(a,c){a=a.changedTouches;for(var e=0;e<a.length;e++){var f=a[e].identifier,g;for(g=0;5>g&&id[g]!=f;g++);if(5==g)for(g=0;5>g&&-1!=id[g];g++);5>g&&(id[g]=f,++g,Eb(g,a[e].clientX,a[e].clientY,c))}}function kd(a){a.preventDefault();jd(a,!0);Db();return!1}
function yd(a){a.preventDefault();a=a.changedTouches;for(var c=0;c<a.length;c++){var e=a[c].identifier,f;for(f=0;5>f&&id[f]!=e;f++);5>f&&(id[f]=-1,++f,Mb(f))}return!1}function zd(a){a.preventDefault();jd(a,!1);return!1}function Ad(a){a.preventDefault();Eb(0,a.clientX,a.clientY,!0);Db();return!1}function Bd(a){a.preventDefault();Mb(0);return!1}function Cd(a){a.preventDefault();Eb(0,a.clientX,a.clientY,!1);return!1}
window.onload=function(){document.body.style.fontFamily="Arial";document.body.style.cursor="default";document.body.style.touchAction="none";z=document.createElement("div");z.style.position="absolute";z.style.width="100%";z.style.backgroundColor="transparent";z.style.color="transparent";z.style.textShadow="0px 0px 8px rgba(88, 226, 144, 0),0px 0px 20px rgba(255, 255, 255, 0)";z.style.top="0px";z.style.left="0px";z.style.fontSize="1px";z.style.textAlign="center";z.style.zIndex="1";z.style.transition=
"1s";z.innerHTML=w;document.body.appendChild(z);for(var a=0;64>a;++a)k[a]=0;for(a=0;6>a;++a)q[a]=-2;R=document.createElement("canvas");R.style.position="absolute";R.style.top="0px";R.style.left="0px";R.style.width="100%";R.style.height="100%";document.body.appendChild(R);S=R.getContext("webgl",{antialias:!1})||R.getContext("experimental-webgl",{antialias:!1});S.enable(S.BLEND);S.blendEquation(S.FUNC_ADD);S.blendFuncSeparate(S.SRC_ALPHA,S.ONE_MINUS_SRC_ALPHA,S.ONE,S.ONE);for(a=0;4>a;++a)T[a]=S.createProgram();
xc(!0,vc[0],0);xc(!1,wc[0],0);xc(!0,vc[1],1);xc(!1,wc[1],1);xc(!0,vc[1],2);xc(!1,wc[2],2);xc(!0,vc[3],3);xc(!1,wc[3],3);for(a=0;4>a;++a)S.linkProgram(T[a]);lc=S.getAttribLocation(T[0],"vD");mc=S.getUniformLocation(T[0],"pJ");nc=S.getAttribLocation(T[1],"vD");oc=S.getUniformLocation(T[1],"pJ");pc=S.getUniformLocation(T[1],"dP");qc=S.getUniformLocation(T[2],"pJ");rc=S.getAttribLocation(T[3],"vD");sc=S.getUniformLocation(T[3],"pJ");tc=S.getUniformLocation(T[3],"aN");uc=S.getUniformLocation(T[3],"cC");
ed();a=[.25,.5,.75];for(var c=0,e=0;32>e;++e)for(var f=h[2*e],g=h[2*e+1],n=l[e],u=0;3>u;++u)U[c]=f,++c,U[c]=g,++c,U[c]=a[u],++c,U[c]=n,++c;Ac(0,U,S.DYNAMIC_DRAW);Ac(1,zc,S.STATIC_DRAW);for(a=0;5>a;a++)id[a]=-1;window.onresize=ed;window.requestAnimationFrame(hd);window.addEventListener("touchstart",kd,!0);window.addEventListener("touchend",yd,!0);window.addEventListener("touchcancel",yd,!0);window.addEventListener("touchmove",zd,!0);window.addEventListener("mousedown",Ad,!0);window.addEventListener("mouseup",
Bd,!0);window.addEventListener("mousemove",Cd,!0)};
</script>
</head>
<body>
</body>
</html>