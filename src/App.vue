<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
import HelloWorld from "@/components/HelloWorld.vue";
</script>

<template>
	<!--<header>
		<img
			alt="Vue logo"
			class="logo"
			src="@/assets/wellraum.jpeg"
			width="125"
			height="125"
		/>

		<div class="wrapper">
			<HelloWorld msg="You did it!" />

			<nav>
				<RouterLink to="/">Home</RouterLink>
				<RouterLink to="/about">About</RouterLink>
			</nav>
		</div>
	</header>

	<RouterView />-->
	<div
		class="flex justify-center items-center h-screen overflow-y-hidden bg-[#f7f7f7]"
	>
		<div
			class="absolute animate-pulse w-[50%] h-[95%] bg-current rounded-full"
		/>
		<div class="absolute animate-pulse w-[60%] h-40 bg-current rounded-2xl" />
		<img
			class="w-1/2 ml-auto mr-auto"
			src="@/assets/wellraum.jpeg"
			alt="Wellraum logo"
		/>
	</div>
</template>
