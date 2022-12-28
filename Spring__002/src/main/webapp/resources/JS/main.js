const apiKey = 'AIzaSyB5ulhLUhTOGvdlR7I-oNgGl0JwSFZ9VNM';
const videoChannel = document.querySelector('#video-channel');
const videoContainer = document.querySelector('#video-container');
const channelId = 'UC7JbUmyD7g8JH6LvkkQuSZQ';
let keyword = '자바스크립트+나도코딩'

function submitForm() {
	var input = document.getElementById('input_area').value;
	console.log(input);
	requestPlaylist(input);
	let Rem = document.getElementById('rem');
	Rem.parentNode.removeChild(Rem);
	return false;
}







// Request play list items
function requestPlaylist(input) {
	const maxResults = 30;
	const playlistURL = `https://www.googleapis.com/youtube/v3/search?key=${apiKey}&safeSearch=moderate&part=snippet&maxResults=${maxResults}&q=${input}`;

	fetch(playlistURL)
		.then(res => res.json())
		.then(data => loadVideo(data));
}

// Display Videos
function loadVideo(data) {
	const playListItems = data.items;
	console.log(playListItems + "플레이 리스트 아이템");
	console.log(data);
	
	if (playListItems) {
		let output = `	<div class="card-columns">
						<ul class="cards">`;

		playListItems.forEach(item => {
			const videoId = item.id.videoId;
			const script = item.snippet.description;
			const thumb = item.snippet.thumbnails.high.url;
			console.log(script);
			console.log(thumb);
			console.log(videoId + "========");

			output += `
			
		<li>
		    <a id="${videoId}" onclick="location.href='VideoPage2.do?lec_id=${videoId}'"  class="card" >
		      <img src="${thumb}" class="card__image" alt="" />
		      <div class="card__overlay">
		        <div class="card__header">
		          <svg class="card__arc" xmlns="http://www.w3.org/2000/svg"><path /></svg>                     
		          <img class="card__thumb" src="${thumb}" />
		          <div class="card__header-text">
		            <h3 class="card__title">언어</h3>            
		            <span class="card__status">문법</span>
		          </div>
		        </div>
		        <p class="card__description">${script}</p>
		      </div>
		    </a>
		    
		  </li>
			
			`;
		});
		output += `</ul></div>`;

		videoContainer.innerHTML = output;
	} else {
		videoContainer.innerHTML = 'Sorry, No videos uploaded!';
	}


}


function Send_id(video_id) {
	console.log(video_id)
	$.ajax({
		url: 'http://localhost:5000/ajax',  
		type: 'POST', 
		data: { 'video_id': video_id },  
		success: function(data) {
    		var result = data; 
    		console.log(result.data);
  		},
		error: function(error) {  
			console.log(error);  
		}
	});

}
