import { AllprojetsService } from './../allprojets.service';
import { Component, OnInit, Injectable, OnDestroy, Input } from '@angular/core';
import { AuthService } from '../AuthService';
import { Router } from '@angular/router';
import { Subscription, Observable, interval } from 'rxjs';
declare var $, jQuery: any;
@Component({
  selector: 'app-entete',
  templateUrl: './entete.component.html',
  styleUrls: ['./entete.component.css']
})
export class EnteteComponent implements OnInit, OnDestroy {
  @Input() avatar = 'default.png';
  @Input() userName: String;
  specialite: String;
  email;
  @Input() Auth;
  tuto = false;
  id;
  link = 'http://localhost/myfreelancer/src/avatars/';
  counter: Subscription;
  constructor(private allprjet: AllprojetsService, private Auths: AuthService) { }

  ngOnInit() {
      this.getUser();
      const header = $('#tete');
        header.before(header.clone().addClass('clone'));
      $(window).scroll(function() {
        const scroll = $(this).scrollTop();
          if (scroll > 100) {
            $('.clone').slideDown();
          } else {
            $('.clone').slideUp();
          }
      });
  }
  getUser() {
     const use = this.Auths.getUser();
     console.log('usssseee ', use);
     if (use !== false) {
        this.avatar = use[0].avatar;
        this.userName = use[0].nom;
        this.specialite = use[0].specialite;
        this.email = use[0].email;
        const skill = use[0].skill;
        if (skill === null) {
          setTimeout(() => {
            this.tuto = true;
          }, 3000);
        }
     }
   this.listenAuth();
  }
  listenAuth() {
    this.Auths.sujet.subscribe(rep => {
      this.Auth = rep;
    });
    this.Auths.getAuth();
  }
  changeSkill() {
    this.tuto = false;
    const js = JSON.parse(this.allprjet.getLocal().getItem('user'));
    js[0].skill = true;
    const email = js[0].email;
    this.allprjet.getLocal().setItem('user', JSON.stringify(js));
    this.allprjet.skill(email).then(res => {
      console.log('etat de skill ', res);
    });
  }
  slideProfil() {
    $('.window-opacity').fadeIn();
    $('.profil-slide').css({'right': 0});
    $('body').toggleClass('scrollToggle');
  }
  ngOnDestroy() {

  }
}
