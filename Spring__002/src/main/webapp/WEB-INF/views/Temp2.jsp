<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
$scene: var(--scene);
$total: var(--total);
$percentage: var(--percentage);

@import url('https://fonts.googleapis.com/css?family=Josefin+Sans:400,700');
@import url('https://fonts.googleapis.com/css?family=Oswald');

.site {
	display: grid;
	grid-template-rows: 3fr 2fr;
	grid-template-columns: 5rem 1fr 1fr 5rem;
	box-shadow: 0 .5rem 2rem rgba(black, 0.1);
	width: 90vw;
	height: 90vh;
	background-color: white;
	font-family: 'Josefin Sans', sans-serif;
	* {
		transition: all 0.5s ease;
	}
}

.site {
	--total: 4;
	--percentage: calc( #{ $scene / $total });
}
input[value='1']:checked ~ .site { --scene: 1; }
input[value='2']:checked ~ .site { --scene: 2; }
input[value='3']:checked ~ .site { --scene: 3; }
input[value='4']:checked ~ .site { --scene: 4; }

input[name="scene"] { display: none; }

input[value="1"]:checked ~ * label[data-scene='1'],
input[value="2"]:checked ~ * label[data-scene='2'],
input[value="3"]:checked ~ * label[data-scene='3'],
input[value="4"]:checked ~ * label[data-scene='4'] {
	display: none;	
}

input[value="1"]:checked ~ * [data-scene]:not([data-scene="1"]),
input[value="2"]:checked ~ * [data-scene]:not([data-scene="2"]),
input[value="3"]:checked ~ * [data-scene]:not([data-scene="3"]),
input[value="4"]:checked ~ * [data-scene]:not([data-scene="4"]) {
	.heading,
	.paragraph {
		transform: translateX(-25%);
		opacity: 0;
	}
}

input[value="1"]:checked ~ * [data-scene="1"],
input[value="2"]:checked ~ * [data-scene="2"],
input[value="3"]:checked ~ * [data-scene="3"],
input[value="4"]:checked ~ * [data-scene="4"] {
	+ [data-scene] {
		tranform: translateX(25%);
	}
}
.layer {
	position: absolute;
	left: 0;
	right: 0;
	bottom: 0;
	top: 0;
	width: 100%;
	height: 100%;
	// for centering layer
	margin: auto;
}


.landscape {
	display: flex;
	align-items: center;
	grid-row: 1 / 2;
	grid-column: 1 / -1;
	background-color: #141610;
	background-image: url(https://picsum.photos/4000/2660?image=992);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center 20%;
	overflow: hidden;
}

.landscape-text {
	display: inline-block;
	font-size: 40vh;
	font-weight: bold;
	
	// left: 50%;
	background: inherit;
	background-image: url('https://picsum.photos/5615/2907?image=974');
	background-clip: text;
	-webkit-background-clip: text;
	background-size: 160% auto;
	background-position: calc(80% + ( -70% * #{$percentage})) 0;
	color: transparent;
	transform: translateX( calc( 40% + (-100% * #{$percentage}) ) );
}

.left-side {
	grid-row: 1 / 2;
	grid-column: 2 / 3;
	font-family: 'Oswald';
	align-self: end;
}

.page-numbers {
	color: white;
	overflow: hidden;
	&:after {
		content: '/' attr(data-total);
		font-size: 1rem;
		position: absolute;
		top: 0;
		left: 4rem;
	}
}

.page-number {
	font-size: 4rem;
	line-height: 4.2rem;
	&--tens {
		align-self: flex-end;
	}
	&--ones {
		position: absolute;
		top: 0;
		left: 0.5em;
		transform: translateY( calc((-100% * (#{ $percentage } - 1/#{$total} ) ) ) );
	}
}

.left-content {
	grid-row: 2 / 4;
	grid-column: 1 / 3;
}

.right-content {
	color: black;
	grid-row: 2 / 4;
	grid-column: 3 / -1;
	overflow: auto;
	> .layer {
		padding: 30px;
	}
}

.slide-nav {
	position: absolute;
	right: 0;
	bottom: 0;
	overflow: hidden;
}

$nav-button-width: 5rem;

.nav-button-container {
	display: flex;
	position: absolute;
	top: 0;
	transition: none;
	transform: translateX(calc(100% + (-1 * #{$nav-button-width} * (#{$scene} + 1))));
	opacity: 0;
}

.button-container {
	display: flex;
	outline: none;
	right: 0;
}

.nav-button {
	display: inline-block;
	padding: 0.5em;
	width: $nav-button-width;
	background: rgba(0,0,0, 0.8);
	color: white;
	cursor: pointer;
	font-family: inherit;
	height: 2rem;
	border: none;
	padding: 0.5rem;
	outline: none;
}

.hero {
	color: white;
	grid-row: 1 / 2;
	grid-column: 3 / -1;
	> .layer {
		display: flex;
		height: 40%;
	}
}

*,
*:before,
*:after {
	box-sizing: border-box;
	position: relative;
}

body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #ccc;
}

</style>
</head>
<body>
<input id="scene-1" type="radio" name="scene" value="1" checked />
<input id="scene-2" type="radio" name="scene" value="2" />
<input id="scene-3" type="radio" name="scene" value="3" />
<input id="scene-4" type="radio" name="scene" value="4" />

<main class="site">
	<div class="landscape">
		<div class="landscape-text">
			DREAM
		</div>
	</div>
	<div class="left-side">
		<div class="page-numbers" data-total='04'>
			<div class="page-number page-number--tens">0</div>
			<div class="page-number page-number--ones">
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</div>
		</div>
	</div>
	<div class="hero">
		<div class="layer" data-scene="1">
			<h1 class="heading">
				Introduction
			</h1>
		</div>
		<div class="layer" data-scene="2">
			<h1 class="heading">
				Navigation
			</h1>
		</div>
		<div class="layer" data-scene="3">
			<h1 class="heading">
				Masked Text
			</h1>
		</div>
		<div class="layer" data-scene="4">
			<h1 class="heading">
				Modern CSS Techniques
			</h1>
		</div>
		<nav class="slide-nav">
			<div class="button-container">
				<button class="nav-button">< Previous</button>
				<button class="nav-button">Next ></button>
			</div>
			<div class="nav-button-container">
				<label class="nav-button" for="scene-1" data-scene="1">1</label>
				<label class="nav-button" for="scene-2" data-scene="2">2</label>
				<label class="nav-button" for="scene-3" data-scene="3">3</label>
				<label class="nav-button" for="scene-4" data-scene="4">4</label>
			</div>
		</nav>
	</div>
	<div class="right-content">
		<div class="layer" data-scene="1">
			<h2 class="heading">A digest of the tutorial</h2>
			<p class="paragraph">
				This is my take on <a href="https://www.youtube.com/watch?v=kd_zuEYCDck">@keyframers' Ocean Overlays</a> codepen exercise. It uses CSS only to acheive masked text, navigation, and animation. It also uses CSS variables in a neat way to acheive some cool effects. Click next to get a summary of how to replicate these techniques.
			</p>
		</div>
		<div class="layer" data-scene="2">
			<h2 class="heading">Hidden radio buttons</h2>
			<p class="paragraph">
				There are 4 hidden radio inputs on this page that keep track of the current "scene". The radios inputs are associated with labels that are also hidden. These labels overlay the "next" and "previous" buttons and are toggled based on the CSS selectors.
			</p>
		</div>
		<div class="layer" data-scene="3">
			<h2 class="heading">background-clip,<br />background-position, and transform</h2>
			<p class="paragraph">
				The masked text can be acheived by setting a background image to the tag containing the text, then by setting background-clip: text. This attribute requires -webkit- prefixing, so don't forget to add that attribute. We use transform to move the text across the page, and background-position to slightly shift the background against the transform direction to get a parallax effect.
			</p>
		</div>
		<div class="layer" data-scene="4">
			<h2 class="heading">CSS Grid and CSS Variables</h2>
			<p class="paragraph">
				The primary layout technique used here is CSS grid. The parent defines grid-template-* and the children uses grid-row and grid-column to determine where the element will span on the grid.
			</p>
			<p class="paragraph">
				The other neat technique used here is CSS variables, which helps to store the current scene value within the CSS stylesheet. Based on the CSS selectors, the --scene variable will be set and used to calculate the percent offset used in the animation. 
			</p>
		</div>
	</div>
</main>

	

</body>
</html>