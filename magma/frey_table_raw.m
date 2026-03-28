///////////////////////////////////////////////////////////////////////////
// frey_table_data.m
//
// Data for the selected Frey elliptic curves appearing in Table 1.
//
// Each record contains:
//   - label: Cremona label of the elliptic curve
//   - conductor: conductor N
//   - root_number: root number w(E)
//   - twists: list of square-free twist parameters d0
///////////////////////////////////////////////////////////////////////////

FreyRec := recformat<
    label,
    conductor,
    root_number,
    twists
>;

FreyTable := [
    rec<FreyRec | label := "11a1", conductor := 11, root_number := -1,
        twists := [-43, -39, -35, -19, -7, 13, 17, 21, 29, 33, 41]>,
    rec<FreyRec | label := "14a1", conductor := 14, root_number := -1,
        twists := [-13, -9, -5, 3, 7, 11, 15]>,
    rec<FreyRec | label := "15a1", conductor := 15, root_number := 1,
        twists := [-11, -7, -3, 1, 5, 9]>,
    rec<FreyRec | label := "17a1", conductor := 17, root_number := -1,
        twists := [-15, -11, -7, -3, 1, 5, 9, 13]>,
    rec<FreyRec | label := "19a1", conductor := 19, root_number := 1,
        twists := [-9, -5, -1, 3, 7, 11]>,
    rec<FreyRec | label := "20a1", conductor := 20, root_number := -1,
        twists := [-7, -3, 1, 5, 9]>,
    rec<FreyRec | label := "34a1", conductor := 34, root_number := -1,
        twists := [-3, 1, 5, 9]>,
    rec<FreyRec | label := "38a1", conductor := 38, root_number := 1,
        twists := [-1, 3, 7, 11]>,
    rec<FreyRec | label := "49a1", conductor := 49, root_number := 1,
        twists := [1, 5, 9, 13]>,
    rec<FreyRec | label := "98a1", conductor := 98, root_number := -1,
        twists := [3, 7, 11, 15]>
];
