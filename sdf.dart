import 'package:flutter/material.dart';
class Frame1 extends StatefulWidget {
	const Frame1({super.key});
	@override
		Frame1State createState() => Frame1State();
	}
class Frame1State extends State<Frame1> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Container(
					constraints: const BoxConstraints.expand(),
					color: Color(0xFFFFFFFF),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Expanded(
								child: Container(
									color: Color(0xFFFFFFFF),
									width: double.infinity,
									height: double.infinity,
									child: SingleChildScrollView(
										child: Column(
											crossAxisAlignment: CrossAxisAlignment.start,
											children: [
												IntrinsicHeight(
													child: Container(
														padding: const EdgeInsets.only( top: 13, bottom: 13, left: 22, right: 22),
														margin: const EdgeInsets.only( top: 8, bottom: 7),
														width: double.infinity,
														child: Row(
															children: [
																Container(
																	width: 54,
																	height: 21,
																	child: Image.network(
																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/pi5si9xq_expires_30_days.png",
																		fit: BoxFit.fill,
																	)
																),
																Expanded(
																	child: Container(
																		width: double.infinity,
																		child: SizedBox(),
																	),
																),
																Container(
																	margin: const EdgeInsets.only( right: 4),
																	width: 17,
																	height: 10,
																	child: Image.network(
																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/bemynrdt_expires_30_days.png",
																		fit: BoxFit.fill,
																	)
																),
																Container(
																	margin: const EdgeInsets.only( right: 5),
																	width: 15,
																	height: 10,
																	child: Image.network(
																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/gh8erkwp_expires_30_days.png",
																		fit: BoxFit.fill,
																	)
																),
																Container(
																	width: 24,
																	height: 11,
																	child: Image.network(
																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/hgdhj6bt_expires_30_days.png",
																		fit: BoxFit.fill,
																	)
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: const EdgeInsets.only( bottom: 12, left: 35, right: 35),
														width: double.infinity,
														child: Row(
															children: [
																Expanded(
																	child: Container(
																		width: double.infinity,
																		child: Text(
																			"Hello Jane",
																			style: TextStyle(
																				color: Color(0xFF255FD5),
																				fontSize: 24,
																				fontWeight: FontWeight.bold,
																			),
																		),
																	),
																),
																InkWell(
																	onTap: () { print('Pressed'); },
																	child: IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Container(
																				decoration: BoxDecoration(
																					border: Border.all(
																						color: Color(0xFF595959),
																						width: 1,
																					),
																					borderRadius: BorderRadius.circular(18),
																				),
																				padding: const EdgeInsets.all(2),
																				child: Column(
																					crossAxisAlignment: CrossAxisAlignment.start,
																					children: [
																						IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Container(
																									decoration: BoxDecoration(
																										borderRadius: BorderRadius.circular(14),
																										color: Color(0xFF595959),
																									),
																									padding: const EdgeInsets.only( top: 2, bottom: 2, left: 3, right: 3),
																									child: Column(
																										crossAxisAlignment: CrossAxisAlignment.start,
																										children: [
																											Container(
																												width: 11,
																												height: 13,
																												child: Image.network(
																													"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/ibhaf0na_expires_30_days.png",
																													fit: BoxFit.fill,
																												)
																											),
																										]
																									),
																								),
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: const EdgeInsets.only( bottom: 14, left: 18, right: 18),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: Container(
																		decoration: BoxDecoration(
																			borderRadius: BorderRadius.circular(23),
																			color: Color(0xFFF0F1F8),
																		),
																		padding: const EdgeInsets.all(5),
																		margin: const EdgeInsets.only( bottom: 12),
																		width: double.infinity,
																		child: Row(
																			children: [
																				InkWell(
																					onTap: () { print('Pressed'); },
																					child: IntrinsicWidth(
																						child: IntrinsicHeight(
																							child: Container(
																								decoration: BoxDecoration(
																									borderRadius: BorderRadius.circular(23),
																									color: Color(0xFFFFFFFF),
																								),
																								padding: const EdgeInsets.only( top: 11, bottom: 11, left: 19, right: 19),
																								margin: const EdgeInsets.only( right: 21),
																								child: Column(
																									children: [
																										Text(
																											"My Assessments ",
																											style: TextStyle(
																												color: Color(0xFF255FD5),
																												fontSize: 14,
																												fontWeight: FontWeight.bold,
																											),
																										),
																									]
																								),
																							),
																						),
																					),
																				),
																				Expanded(
																					child: Container(
																						width: double.infinity,
																						child: Text(
																							"My Appointments",
																							style: TextStyle(
																								color: Color(0xFF6B6B6B),
																								fontSize: 14,
																								fontWeight: FontWeight.bold,
																							),
																							textAlign: TextAlign.center,
																						),
																					),
																				),
																			]
																		),
																	),
																),
																IntrinsicHeight(
																	child: Container(
																		decoration: BoxDecoration(
																			borderRadius: BorderRadius.circular(21),
																			color: Color(0xFFF5F5FA),
																		),
																		padding: const EdgeInsets.symmetric(vertical: 13),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(11),
																							color: Color(0xFFFFFFFF),
																							boxShadow: [
																								BoxShadow(
																									color: Color(0x0D000000),
																									blurRadius: 21,
																									offset: Offset(2, 2),
																								),
																							],
																						),
																						margin: const EdgeInsets.only( bottom: 6, left: 15, right: 15),
																						width: double.infinity,
																						child: Row(
																							children: [
																								IntrinsicWidth(
																									child: IntrinsicHeight(
																										child: Container(
																											decoration: BoxDecoration(
																												borderRadius: BorderRadius.only(
																													topLeft: Radius.circular(11),
																													bottomLeft: Radius.circular(11),
																												),
																												gradient: LinearGradient(
																													begin: Alignment(-1, -1),
																													end: Alignment(-1, 1),
																													colors: [
																														Color(0x80E36631),
																														Color(0x80D9BE5D),
																													],
																												),
																											),
																											padding: const EdgeInsets.only( top: 5, left: 15, right: 15),
																											margin: const EdgeInsets.only( right: 14),
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														width: 93,
																														height: 111,
																														child: Image.network(
																															"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/gzil43jt_expires_30_days.png",
																															fit: BoxFit.fill,
																														)
																													),
																												]
																											),
																										),
																									),
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 7),
																														width: double.infinity,
																														child: Text(
																															"Fitness Assessment",
																															style: TextStyle(
																																color: Color(0xFF222E58),
																																fontSize: 14,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 10),
																														width: double.infinity,
																														child: Text(
																															"Get started on your fitness goals with our physical assessment and vital scan",
																															style: TextStyle(
																																color: Color(0xFF2A2A2A),
																																fontSize: 10,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 10),
																																		width: 22,
																																		height: 22,
																																		child: Image.network(
																																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/w3rd926l_expires_30_days.png",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	IntrinsicWidth(
																																		child: IntrinsicHeight(
																																			child: Column(
																																				children: [
																																					Text(
																																						"Start",
																																						style: TextStyle(
																																							color: Color(0xFF255FD5),
																																							fontSize: 14,
																																							fontWeight: FontWeight.bold,
																																						),
																																					),
																																				]
																																			),
																																		),
																																	),
																																]
																															),
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						decoration: BoxDecoration(
																							borderRadius: BorderRadius.circular(11),
																							color: Color(0xFFFFFFFF),
																							boxShadow: [
																								BoxShadow(
																									color: Color(0x0D000000),
																									blurRadius: 21,
																									offset: Offset(2, 2),
																								),
																							],
																						),
																						margin: const EdgeInsets.only( bottom: 4, left: 15, right: 15),
																						width: double.infinity,
																						child: Row(
																							children: [
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.only(
																														topLeft: Radius.circular(11),
																														bottomLeft: Radius.circular(11),
																													),
																													color: Color(0x00000000),
																												),
																												padding: const EdgeInsets.only( top: 3, bottom: 3, left: 16, right: 16),
																												margin: const EdgeInsets.only( right: 10),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															width: 99,
																															height: 126,
																															child: Image.network(
																																"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/sh46qlji_expires_30_days.png",
																																fit: BoxFit.fill,
																															)
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																								Expanded(
																									child: IntrinsicHeight(
																										child: Container(
																											width: double.infinity,
																											child: Column(
																												crossAxisAlignment: CrossAxisAlignment.start,
																												children: [
																													Container(
																														margin: const EdgeInsets.only( bottom: 14, left: 3, right: 3),
																														width: 78,
																														child: Text(
																															"Health Risk Assesment",
																															style: TextStyle(
																																color: Color(0xFF222E58),
																																fontSize: 14,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													Container(
																														margin: const EdgeInsets.only( bottom: 5, left: 3, right: 3),
																														width: double.infinity,
																														child: Text(
																															"Identify and mitigate health risks with precise, proactive assessments",
																															style: TextStyle(
																																color: Color(0xFF2A2A2A),
																																fontSize: 10,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													),
																													IntrinsicWidth(
																														child: IntrinsicHeight(
																															child: Row(
																																children: [
																																	Container(
																																		margin: const EdgeInsets.only( right: 9),
																																		width: 22,
																																		height: 22,
																																		child: Image.network(
																																			"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/48mxcnth_expires_30_days.png",
																																			fit: BoxFit.fill,
																																		)
																																	),
																																	IntrinsicWidth(
																																		child: IntrinsicHeight(
																																			child: Column(
																																				children: [
																																					Text(
																																						"Start",
																																						style: TextStyle(
																																							color: Color(0xFF255FD5),
																																							fontSize: 14,
																																							fontWeight: FontWeight.bold,
																																						),
																																					),
																																				]
																																			),
																																		),
																																	),
																																]
																															),
																														),
																													),
																												]
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																				IntrinsicHeight(
																					child: Container(
																						width: double.infinity,
																						child: Column(
																							children: [
																								InkWell(
																									onTap: () { print('Pressed'); },
																									child: IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												decoration: BoxDecoration(
																													borderRadius: BorderRadius.circular(13),
																													color: Color(0xFF232F58),
																												),
																												padding: const EdgeInsets.only( top: 3, bottom: 3, left: 21, right: 21),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Text(
																															"View all",
																															style: TextStyle(
																																color: Color(0xFFFFFFFF),
																																fontSize: 12,
																																fontWeight: FontWeight.bold,
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																								),
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																),
															]
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: const EdgeInsets.only( bottom: 14, left: 18, right: 18),
														width: double.infinity,
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																IntrinsicHeight(
																	child: Container(
																		margin: const EdgeInsets.only( bottom: 5, left: 18, right: 18),
																		width: double.infinity,
																		child: Row(
																			children: [
																				Expanded(
																					child: Container(
																						width: double.infinity,
																						child: Text(
																							"Challenges",
																							style: TextStyle(
																								color: Color(0xFF2F2F2F),
																								fontSize: 14,
																								fontWeight: FontWeight.bold,
																							),
																						),
																					),
																				),
																				IntrinsicWidth(
																					child: IntrinsicHeight(
																						child: Row(
																							children: [
																								Container(
																									margin: const EdgeInsets.only( right: 12),
																									child: Text(
																										"View All",
																										style: TextStyle(
																											color: Color(0xFF2F2F2F),
																											fontSize: 12,
																											fontWeight: FontWeight.bold,
																										),
																									),
																								),
																								Container(
																									width: 24,
																									height: 24,
																									child: Image.network(
																										"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/pq1sga21_expires_30_days.png",
																										fit: BoxFit.fill,
																									)
																								),
																							]
																						),
																					),
																				),
																			]
																		),
																	),
																),
																IntrinsicHeight(
																	child: Container(
																		decoration: BoxDecoration(
																			borderRadius: BorderRadius.circular(21),
																			color: Color(0xFFC0E9D1),
																		),
																		padding: const EdgeInsets.symmetric(vertical: 8),
																		width: double.infinity,
																		child: Column(
																			crossAxisAlignment: CrossAxisAlignment.start,
																			children: [
																				Container(
																					margin: const EdgeInsets.only( left: 17),
																					child: Text(
																						"Today’s Challenge!",
																						style: TextStyle(
																							color: Color(0xFF2A7A70),
																							fontSize: 12,
																							fontWeight: FontWeight.bold,
																						),
																					),
																				),
																				IntrinsicWidth(
																					child: IntrinsicHeight(
																						child: Container(
																							margin: const EdgeInsets.only( left: 17),
																							child: Row(
																								children: [
																									IntrinsicWidth(
																										child: IntrinsicHeight(
																											child: Container(
																												margin: const EdgeInsets.only( right: 8),
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(15),
																																		color: Color(0xFF2A7A70),
																																	),
																																	padding: const EdgeInsets.only( top: 3, bottom: 3, left: 12, right: 12),
																																	margin: const EdgeInsets.only( bottom: 8),
																																	child: Column(
																																		crossAxisAlignment: CrossAxisAlignment.start,
																																		children: [
																																			Text(
																																				"Push Up 20x",
																																				style: TextStyle(
																																					color: Color(0xFFFFFFFF),
																																					fontSize: 10,
																																					fontWeight: FontWeight.bold,
																																				),
																																			),
																																		]
																																	),
																																),
																															),
																														),
																														IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	margin: const EdgeInsets.only( bottom: 11),
																																	child: Column(
																																		crossAxisAlignment: CrossAxisAlignment.start,
																																		children: [
																																			IntrinsicWidth(
																																				child: IntrinsicHeight(
																																					child: Container(
																																						decoration: BoxDecoration(
																																							borderRadius: BorderRadius.circular(7),
																																							color: Color(0xFFFFFFFF),
																																						),
																																						padding: const EdgeInsets.only( right: 79),
																																						margin: const EdgeInsets.only( bottom: 4),
																																						child: Column(
																																							crossAxisAlignment: CrossAxisAlignment.start,
																																							children: [
																																								Container(
																																									decoration: BoxDecoration(
																																										borderRadius: BorderRadius.circular(7),
																																										color: Color(0xFFFF88A4),
																																									),
																																									width: 82,
																																									height: 9,
																																									child: SizedBox(),
																																								),
																																							]
																																						),
																																					),
																																				),
																																			),
																																			Text(
																																				"10/20 Complete",
																																				style: TextStyle(
																																					color: Color(0xFF313131),
																																					fontSize: 10,
																																				),
																																			),
																																		]
																																	),
																																),
																															),
																														),
																														IntrinsicWidth(
																															child: IntrinsicHeight(
																																child: Container(
																																	decoration: BoxDecoration(
																																		borderRadius: BorderRadius.circular(15),
																																		color: Color(0xFFFFFFFF),
																																	),
																																	padding: const EdgeInsets.only( top: 4, bottom: 4, left: 5, right: 5),
																																	child: Row(
																																		children: [
																																			Container(
																																				margin: const EdgeInsets.only( right: 9),
																																				width: 19,
																																				height: 19,
																																				child: Image.network(
																																					"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/7vnvprzq_expires_30_days.png",
																																					fit: BoxFit.fill,
																																				)
																																			),
																																			IntrinsicWidth(
																																				child: IntrinsicHeight(
																																					child: Container(
																																						padding: const EdgeInsets.only( bottom: 1),
																																						child: Column(
																																							children: [
																																								Text(
																																									"Continue",
																																									style: TextStyle(
																																										color: Color(0xFF255FD5),
																																										fontSize: 12,
																																										fontWeight: FontWeight.bold,
																																									),
																																								),
																																							]
																																						),
																																					),
																																				),
																																			),
																																		]
																																	),
																																),
																															),
																														),
																													]
																												),
																											),
																										),
																									),
																									Container(
																										width: 152,
																										height: 85,
																										child: Image.network(
																											"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/w0z15ekz_expires_30_days.png",
																											fit: BoxFit.fill,
																										)
																									),
																								]
																							),
																						),
																					),
																				),
																			]
																		),
																	),
																),
															]
														),
													),
												),
												IntrinsicWidth(
													child: IntrinsicHeight(
														child: Container(
															margin: const EdgeInsets.only( bottom: 6, left: 18),
															child: Column(
																crossAxisAlignment: CrossAxisAlignment.start,
																children: [
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Container(
																				margin: const EdgeInsets.only( bottom: 12, left: 18),
																				child: Row(
																					children: [
																						Container(
																							margin: const EdgeInsets.only( right: 103),
																							child: Text(
																								"Workout Routines",
																								style: TextStyle(
																									color: Color(0xFF2F2F2F),
																									fontSize: 14,
																									fontWeight: FontWeight.bold,
																								),
																							),
																						),
																						IntrinsicWidth(
																							child: IntrinsicHeight(
																								child: Row(
																									children: [
																										Container(
																											margin: const EdgeInsets.only( right: 12),
																											child: Text(
																												"View All",
																												style: TextStyle(
																													color: Color(0xFF2F2F2F),
																													fontSize: 12,
																													fontWeight: FontWeight.bold,
																												),
																											),
																										),
																										Container(
																											width: 24,
																											height: 24,
																											child: Image.network(
																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/zn6wtgbp_expires_30_days.png",
																												fit: BoxFit.fill,
																											)
																										),
																									]
																								),
																							),
																						),
																					]
																				),
																			),
																		),
																	),
																	IntrinsicWidth(
																		child: IntrinsicHeight(
																			child: Row(
																				crossAxisAlignment: CrossAxisAlignment.start,
																				children: [
																					IntrinsicWidth(
																						child: IntrinsicHeight(
																							child: Container(
																								decoration: BoxDecoration(
																									border: Border.all(
																										color: Color(0xFFCDCDCD),
																										width: 1,
																									),
																									borderRadius: BorderRadius.circular(21),
																								),
																								padding: const EdgeInsets.all(1),
																								margin: const EdgeInsets.only( right: 19),
																								child: Row(
																									children: [
																										Container(
																											margin: const EdgeInsets.only( right: 19),
																											width: 109,
																											height: 110,
																											child: Image.network(
																												"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/32c8tvfl_expires_30_days.png",
																												fit: BoxFit.fill,
																											)
																										),
																										IntrinsicWidth(
																											child: IntrinsicHeight(
																												child: Column(
																													crossAxisAlignment: CrossAxisAlignment.start,
																													children: [
																														Container(
																															margin: const EdgeInsets.only( bottom: 3),
																															child: Text(
																																"Sweat Starter",
																																style: TextStyle(
																																	color: Color(0xFF2F2F2F),
																																	fontSize: 14,
																																	fontWeight: FontWeight.bold,
																																),
																															),
																														),
																														Container(
																															margin: const EdgeInsets.only( bottom: 11),
																															child: Text(
																																"Full Body",
																																style: TextStyle(
																																	color: Color(0xFF666666),
																																	fontSize: 10,
																																),
																															),
																														),
																														InkWell(
																															onTap: () { print('Pressed'); },
																															child: IntrinsicWidth(
																																child: IntrinsicHeight(
																																	child: Container(
																																		decoration: BoxDecoration(
																																			border: Border.all(
																																				color: Color(0xFFCDCDCD),
																																				width: 1,
																																			),
																																			borderRadius: BorderRadius.circular(21),
																																		),
																																		padding: const EdgeInsets.only( top: 6, bottom: 6, left: 8, right: 8),
																																		margin: const EdgeInsets.only( bottom: 11),
																																		child: Column(
																																			crossAxisAlignment: CrossAxisAlignment.start,
																																			children: [
																																				Text(
																																					"Lose Weight",
																																					style: TextStyle(
																																						color: Color(0xFF255FD5),
																																						fontSize: 8,
																																						fontWeight: FontWeight.bold,
																																					),
																																				),
																																			]
																																		),
																																	),
																																),
																															),
																														),
																														Text(
																															"Difficulty : Medium ",
																															style: TextStyle(
																																color: Color(0xFF666666),
																																fontSize: 10,
																															),
																														),
																													]
																												),
																											),
																										),
																									]
																								),
																							),
																						),
																					),
																					Container(
																						width: 88,
																						height: 112,
																						child: Image.network(
																							"https://i.imgur.com/1tMFzp8.png",
																							fit: BoxFit.fill,
																						)
																					),
																				]
																			),
																		),
																	),
																]
															),
														),
													),
												),
												IntrinsicHeight(
													child: Container(
														margin: const EdgeInsets.only( bottom: 11),
														width: double.infinity,
														child: Column(
															children: [
																Container(
																	width: 134,
																	height: 5,
																	child: Image.network(
																		"https://storage.googleapis.com/tagjs-prod.appspot.com/v1/SI4h1uIJT3/nvk8hn3l_expires_30_days.png",
																		fit: BoxFit.fill,
																	)
																),
															]
														),
													),
												),
											],
										)
									),
								),
							),
						],
					),
				),
			),
		);
	}
}