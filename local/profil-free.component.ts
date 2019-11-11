import { AllprojetsService } from './../allprojets.service';
import { AppComponent } from './../app.component';
import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
declare var $, jQuery: any;
@Component({
  selector: 'app-profil-free',
  templateUrl: './profil-free.component.html',
  styleUrls: ['./profil-free.component.css']
})
export class ProfilFreeComponent implements OnInit {

  constructor(private component: AppComponent, private routes: Router, private route: ActivatedRoute, private service: AllprojetsService) { }

  ngOnInit() {
    jQuery(window).trigger('resize').trigger('scroll');
      $('.ui.checkbox')
        .checkbox();
    $('.items-user').on('click', function() {
     $('.items-user').each(function() {
        $(this).removeClass('activate');
     });
     $(this).addClass('activate');
    });
    $('.check').on('click', function() {
        const ok = $(this).hasClass('ok') ? true : false;
        const email = JSON.parse(this.service.getLocal().getItem('user'))[0].email;
        if (ok === true) {
            $(this).removeClass('ok');
            $.ajax({
              type: 'POST',
              url: 'http://localhost/php-challenge/dispo.php',
              data: {email: email, dispo: 1}
            });
        } else {
          $(this).addClass('ok');
          $(this).removeClass('ok');
            $.ajax({
              type: 'POST',
              url: 'http://localhost/php-challenge/dispo.php',
              data: {email: email, dispo: 0}
            });
        }
    });
  }
}
