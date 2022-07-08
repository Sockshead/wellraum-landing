import { defineAsyncComponent } from "vue";
import { createRouter, createWebHistory } from "vue-router";

const router = createRouter({
	history: createWebHistory(), //createWebHistory(import.meta.env.BASE_URL),
	routes: [
		{
			path: "/",
			name: "home",
			component: defineAsyncComponent(() => import("../views/HomeView.vue")),
		},
		{
			path: "/about",
			name: "about",
			component: defineAsyncComponent(() => import("../views/AboutView.vue")),
		},
	],
});

export default router;
