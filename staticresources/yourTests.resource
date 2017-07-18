/**
 * This is a 'hello world' jasmine test spec file.
 * These examples show the "shape" of a Jasmine spec.
 */
describe('Dreamhouse Lightning Component tests', function() {
    describe('c:IQPictureUploader', function() {
        beforeEach(function(done) {
            // Create a record in advance, for use with the Save, Reload and Delete actions
            var that = this;
            var renderInto = document.getElementById("renderTestComponents");
            $T.createComponent("c:IQPictureUploader", {}, renderInto)
            .then(function(component){
                that.component = component;
            }).then(function() {
                done();
            }).catch(function(e) {
                done.fail(e);
            });
        });

        afterEach(function() {
            // Each spec (test) renders its components into the same div,
            // so we need to clear that div out at the end of each spec.
            $T.clearRenderedTestComponents();
        });

        it('check that the property type is properly configured', function() {
            var title = this.component.find("cardTitle").get("v.title")
            expect(title).toBeDefined();
            expect(title.length).toBe(2);
            expect(title[1].get("v.value")).toContain("IQ Picture Uploader");;
            expect(this.component.find("cardTitle").get("v.footer")).toBe("Powered by Einstein");
        });

    });
});