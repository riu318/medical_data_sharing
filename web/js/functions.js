    var X = jQuery.noConflict();
	
	X(document).ready(function(){
							   
		//$('html,body').scrollTop(2220);
	
		X('html,body').scrollTop(0);
		
		X('dd').hide();
		X('dd.cssDisplay').show(); 
		X('dt').mouseover(function(){
			X('dt').removeClass('hover');
			X(this).addClass('hover');
		});
		X('dt').mouseout(function(){
			X('dt').removeClass('hover');
		});
		X('dt').click(function(){
			if(X(this).next('dd').is(':visible'))
			{
				X(this).next('dd').slideUp();
				X(this).removeClass('active')
			}
			else
			{
				X('dt').removeClass('active');
				X('dd:visible').slideUp();
				X(this).next('dd').slideDown( function(){var offset = X(this).prev('dt').offset(); X('html,body').animate({scrollTop: offset.top - 0}, 500);});				
				X(this).addClass('active');	
			}
		});
		
		//animacaoScroll();
		

		X('a[href*=#]').click(function() {
			if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
				var $target = X(this.hash);
				$target = $target.length && $target || X('[name=' + this.hash.slice(1) +']');
				if ($target.length) {
					var targetOffset = $target.offset().top;
					X('html,body').animate({scrollTop: targetOffset}, 1000);
					return true;
				}
			}
		});

	});
	
	function animacaoScroll()
	{
		var documentHeight 		= X(document).height();
		var documentScroll 		= X(window).scrollTop();
		var razaoDeslocamento 	= 1480 / documentHeight;
		var asteroide 			= X('#img-asteroide').position();
		var galaxia 			= X('#img-galaxia').position();		
		
		X(window).scroll(function () { 
			var diferencaScroll = X(window).scrollTop() - documentScroll;
			documentScroll = X(window).scrollTop();
			if(asteroide.top <= 2201 && galaxia.top>=719)
			{
				asteroide.top = asteroide.top - (diferencaScroll * razaoDeslocamento);
				galaxia.top = galaxia.top + (diferencaScroll * razaoDeslocamento);
				X('#img-asteroide').stop().animate({top: asteroide.top}, 50);
				X('#img-galaxia').stop().animate({top: galaxia.top}, 30);
			}
    	});		
	}
	
	function changesearch(){
		var search_option_val = "";
		var search_option_val = X('input:radio[name=searchradio]:checked').val();
		
		if(search_option_val=="byName"){
			X("#seachbyname").show();
			X("#seachbyspecialty").hide();
		}
		else if(search_option_val=="bySpecialty"){
			X("#seachbyname").hide();
			X("#seachbyspecialty").show();
		}
		else{
			
		}
		
		
	}
	
	function searchdoc(){
		
		var search_option_val = "";
		var srchfor="";
		var search_val="";
		var search_text="";
		var go_for_search = true;
		var search_option_val = X('input:radio[name=searchradio]:checked').val();
		
		if(search_option_val=="byName"){
			
			X("#seachbyname").show();
			X("#seachbyspecialty").hide();
			
			srchfor = 1;
			search_val = X("#docname").val();
			
			if(search_val=="" || search_val=="Search  By Name" || search_val=="Search  By Name  "){
				alert("Please Enter Doctors Name");
				go_for_search = false;
			}
			
		}
		else if(search_option_val=="bySpecialty"){
			X("#seachbyname").hide();
			X("#seachbyspecialty").show();
			srchfor = 2;
			search_val = X("#selectspecialty").val();
			search_text = X("#selectspecialty option:selected").text();
			
			if(search_val==""){
				alert("Please select any Specialty ");
				go_for_search = false;
			}
		}
		else{
			
		}
		
		if(search_option_val=="bySpecialty"){
			if(go_for_search){
				window.location.href='search_doctor.php?srchfor='+escape(srchfor)+'&search_val='+escape(search_val)+'&search_text='+escape(search_text);
			}
		}
		else{
				if(go_for_search){
					window.location.href='dr_profile.php?dr_id='+X('#hidevalueurl').val();
				}
		}
	}